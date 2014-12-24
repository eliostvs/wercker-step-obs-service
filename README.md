# obs-runservice

Open Build Service(OBS) is a distribution build system.

By enabling this hook, any Open Build Service instance (running version 2.5 or higher) will list
to push events. OBS Source Service will get execute for a defined package which will update
the sources in OBS and therefore rebuild automatically.

You need to have a package using a source service to update the sources.
Check the OBS manual how to set this up.

Create an authentication token for your account using `osc` command line tool:

```
    osc token --create
```

You may already specify the package:

```
    osc token --create PROJECT PACKAGE
```

That means the token can only be used for this package.

The execution can be tested via:

```
    osc token --trigger YOUR_TOKEN
```

Tokens can be list with:

```
    osc token
```

For more details about OBS, go to http://www.openbuildservice.org

## Options

* `token` (required). Your authentication token.
* `url` (optional, default: htts://api.opensuse.org:443). The API url.
* `project` (optional, default: ''). The project name.
* `package` (optional, default: ''). The package name in the project.

## Examples

Add $OBS_TOKEN as deploy target or application environment variable:

```
    - obs-runservice:
      token: $OBS_TOKEN
```

or if your token was created without specify the package name:

```
    - obs-runservice:
      token: $OBS_TOKEN
      project: $OBS_PROJECT_NAME
      package: $OBS_PACKAGE_NAME
```

# License

The MIT License (MIT)

Copyright (c) 2014 Elio Esteves Duarte

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Changelog

## 0.0.1
- initial release
