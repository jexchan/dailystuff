#use your repository root path for replacement
$rootDir = 'https://fndsvn.dev.activenetwork.com/foundations'

$services = [$rootDir + 'core/flex-widgets/agencysettingwidgets/trunk/ agencysettingwidgets',
             $rootDir + 'core/flex-widgets/sharedorderlib/trunk/ sharedorderlib',
             $rootDir + 'core/flex-widgets/orderwidgets/trunk/ orderwidgets']
             
$libraries = [$rootDir + 'core-services-api',
              $rootDir + 'hibernate-support']
               
$flexProjects = [$rootDir + 'flex/flex-widgets/agencysettingwidgets',
                 $rootDir + 'flex/flex-widgets/orderwidgets',
                 $rootDir + 'flex/flex-widgets/reportwidgets',
                 $rootDir + 'flex/fnd-flex/fndcore',
                 $rootDir + 'flex/fnd-flex/fndglobalstyles',
                 $rootDir + 'flex/fnd-flex/fnd-merged',
                 $rootDir + 'flex/fnd-flex/fnd-runtime',
                 $rootDir + 'flex/fnd-flex/unittestrunner']
