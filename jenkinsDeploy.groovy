properties([
    parameters([
        booleanParam(defaultValue: false, description: 'Please select to Apply the changes ', name: 'terraformApply'),
        booleanParam(defaultValue: false, description: 'Please select to destroy ', name: 'terraformDestroy'), 
        booleanParam(defaultValue: false, description: 'Please select to run the job in debug mode ', name: 'debugMode'), 
        choice(choices: ['dev', 'qa', 'stage', 'prod'], description: 'Please select an environment to deploy', name: 'environment')
        ])
    ])