// Take one (hardcoded) translation file and ensure that all other translation files have the same keys in the same order

import fs from 'fs'
import path from 'path';

// Only require translate if we're actually translating
let translate;
try {
  translate = require('translate');
  translate.engine = 'libre';
  translate.key = process.argv[2] || '';
  translate.from = 'en';
  translate.url = process.env.LIBRETRANSLATE_URL || 'http://localhost:5000/translate';
} catch (e) {
  // translate package not available, we'll just copy English keys
  console.log('Translate package not available, using English fallbacks');
}

const neverAutoTranslate = {
    steamMobile: ['*'],
    steamChat: ['*'],
    root: ['*'],
    updatiumExportHyphenatedLowercase: ['*'],
    theme: ['de'],
    appId: ['de'],
    app: ['de'],
    apps: ['de', 'gl'],
    placeholder: ['pl'],
    importExport: ['fr'],
    url: ['fr', 'ca', 'de', 'gl', 'pt', 'pt-BR'],
    vivoAppStore: ['*'],
    coolApk: ['*'],
    updatiumImport: ['nl'],
    appLogs: ['nl'],
    apk: ['vi', 'ar', 'ca', 'de', 'es', 'gl'],
    minute: ['fr'],
    pseudoVersion: ['da'],
    tencentAppStore: ['*']
}

const translateText = async (text, targetLang) => {
  if (translate) {
    return translate(text, targetLang.slice(0, 2));
  } else {
    return text; // Return original text if translate is not available
  }
}

const main = async () => {
    const translationsDir = import.meta.dirname
    const templateFile = `${translationsDir}/en.json`
    const otherFiles = fs.readdirSync(translationsDir).map(f => {
        return `${translationsDir}/${f}`
    }).filter(f => f.endsWith('.json') && f != templateFile && !f.split('/').pop().startsWith('package'))

    const templateTranslation = JSON.parse(fs.readFileSync(templateFile).toString())

    otherFiles.forEach(file => {
        const thisTranslationOriginal = JSON.parse(fs.readFileSync((file).toString()))
        const thisTranslationNew = {}
        Object.keys(templateTranslation).forEach(k => {
            thisTranslationNew[k] = thisTranslationOriginal[k] || templateTranslation[k]
        })
        fs.writeFileSync(file, `${JSON.stringify(thisTranslationNew, null, '    ')}\n`)
    })
}

main().catch(e => console.error)
