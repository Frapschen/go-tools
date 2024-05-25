# go-tools

A [recommended](https://github.com/golang/go/wiki/Modules#how-can-i-track-tool-dependencies-for-a-module) way
to manage your go tools in each Golang project.

## Usage

```shell
make install-tools
```

## Tips

If the package you imported has an uncommon name, such as `github.com/hairyhenderson/gomplate/v3`, 
you can add a comment after it:

```go
package tools

import (
	_ "github.com/hairyhenderson/gomplate/v3" // gomplate
)
```

The `install-tools` will handle it properly and name the package as gomplate.

## References
- https://github.com/open-telemetry/opentelemetry-collector-contrib
- https://github.com/golang/go/wiki/Modules#how-can-i-track-tool-dependencies-for-a-module
