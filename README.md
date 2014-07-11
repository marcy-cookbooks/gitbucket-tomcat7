gitbucket-tomcat7 Cookbook
==========================
Run GitBucket(https://github.com/takezoe/gitbucket) on tomcat7


Requirements
------------
* Chef 11 or higer
* Amazon Linux 2013.09.01

Attributes
----------
```ruby
default['gitbucket-tomcat-7']['version'] = "2.1"
```

#### gitbucket-tomcat7::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['gitbucket-tomcat7']['version']</tt></td>
    <td>String</td>
    <td>Version of GitBucket</td>
    <td><tt>2.1</tt></td>
  </tr>
</table>

Usage
-----
#### gitbucket-tomcat7::default

Just include `gitbucket-tomcat7` in your node's `run_list`:

```json
{
  "name":"my_node",
  "gitbucket-tomcat7": {"version": "2.1"}
  "run_list": [
    "recipe[gitbucket-tomcat7]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
License: Apache 2.0

Authors: Masashi Terui
