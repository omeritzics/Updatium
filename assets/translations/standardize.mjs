// Take one (hardcoded) translation file and ensure that all other translation files have the same keys in the same order

import fs from 'fs'
import translate from 'translate';

translate.engine = 'libre';
translate.key = process.argv[2]
translate.from = 'en'
translate.url = 'http://localhost:5000/translate'

const neverAutoTranslate = {
    steamMobile: ['*'],
    steamChat: ['*'],
    root: ['*'],
    obtainiumExportHyphenatedLowercase: ['*'],
    theme: ['de'],
    appId: ['de'],
    app: ['de'],
    apps: ['de', 'gl'],
    placeholder: ['pl'],
    importExport: ['fr'],
    url: ['fr', 'ca', 'de', 'gl', 'pt', 'pt-BR'],
    vivoAppStore: ['*'],
    coolApk: ['*'],
    obtainiumImport: ['nl'],
    appLogs: ['nl'],
    apk: ['vi', 'ar', 'ca', 'de', 'es', 'gl'],
    minute: ['fr'],
    pseudoVersion: ['da'],
    tencentAppStore: ['*']
}

const translateText = (text, targetLang) => translate(text, targetLang.slice(0, 2));

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
