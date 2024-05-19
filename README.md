# cyanware.github.io

## Quick Start

Create a new Publish project
```
mkdir MyWebsite
cd MyWebsite
publish new
```

Open the SPM package in Xcode and execute menu Product -> Run, with My Mac as the Destination will generate the Output HTML
```
open Package.swift
```

Validate HTML output
```
open Output/index.html
```

```
try DeliciousRecipes().publish(using: [
    ...
    .deploy(using: .gitHub("johnsundell/delicious-recipes"))
])
```

```
publish deploy
```