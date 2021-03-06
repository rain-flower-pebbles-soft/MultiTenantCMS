# MultiTenantCMS

[![Build Status](https://travis-ci.org/wuwx/MultiTenantCMS.svg)](https://travis-ci.org/wuwx/MultiTenantCMS)
[![Code Climate](https://codeclimate.com/github/wuwx/MultiTenantCMS/badges/gpa.svg)](https://codeclimate.com/github/wuwx/MultiTenantCMS)
[![Coverage Status](https://codeclimate.com/github/wuwx/MultiTenantCMS/badges/coverage.svg)](https://codeclimate.com/github/wuwx/MultiTenantCMS/coverage)

MultiTenantCMS 是使用 Rails 框架编写的多租户 CMS 系统，其目标是构建一套实际可用的站群系统

## Installation

### Vagrant
```bash
vagrant up
```

### Docker
```bash
docker build -t multitenantcms .
docker run -it multitenantcms /bin/bash --login
rails server
```

## Getting Started
```bash
http://localhost:3000
```

## License

MultiTenantCMS is released under the MIT License.
