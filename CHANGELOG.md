# v0.1.1

* 2021-01-20 [0b5aa59](../../commit/0b5aa59) - __(Andrew N. Shalaev)__ fix: remove Forwardable module 
because this line https://github.com/ruby/ruby/blob/bbda1a027475bf7ce5e1a9583a7b55d0be71c8fe/lib/forwardable.rb#L187
overrides delegate method from ActiveSupport core_ext

# v0.1.0

* 2015-09-23 [163c173](../../commit/163c173) - __(Sergey D)__ feat: ability to report with dynamic columns list 
There was a problem in TableBuilder, that it treats block result as
current result row. Instead it MUST use instance variable defined in
builder for each row. And ther return that array as result.

* 2015-09-22 [b31ce64](../../commit/b31ce64) - __(Sergey D)__ fix: README was out-of-date 
* 2015-09-22 [27941af](../../commit/27941af) - __(Sergey D)__ Release v0.0.3 
* 2015-09-22 [3474f69](../../commit/3474f69) - __(Sergey D)__ feat: building report with objects 
CAUTION: breaking change, by default RubyReports treat query as Object
storage

This feature introduces Storages. You can specify what storage you are
using in query. For now two options available:
- Ruby::Reports::Storages::HASH, report treats each row as Hash, each
  column reads as key from it.
- Ruby::Reports::Storages::OBJECT, report treats each row as Ruby
  Object, each column reads as public method call on it.

CAUTION: breaking change, by default RubyReports treat query as Object
storage

# v0.0.3

* 2015-09-22 [d8f4c93](../../commit/d8f4c93) - __(Sergey D)__ feat: building report with objects 
CAUTION: breaking change, by default RubyReports treat query as Object
storage

This feature introduces Storages. You can specify what storage you are
using in query. For now two options available:
- Ruby::Reports::Storages::HASH, report treats each row as Hash, each
  column reads as key from it.
- Ruby::Reports::Storages::OBJECT, report treats each row as Ruby
  Object, each column reads as public method call on it.

CAUTION: breaking change, by default RubyReports treat query as Object
storage

* 2015-09-22 [9399b02](../../commit/9399b02) - __(Sergey D)__ fix: minor changes during debug 
- Iterator used #size instead of #count
- Table Builder did not clear @table_header after building
- Query Builder used #order instead of #order_by
- Base Report #formatter and #config methods were exposed unnecessarily

* 2015-09-21 [1037605](../../commit/1037605) - __(Sergey D)__ fix: arguments order filename hashing 
There is a bug, guilty for identifiing MyReport.build(a: 1, b: 2) and
MyReport.build(b: 2, a: 1) as different reports

* 2015-09-21 [5a312cc](../../commit/5a312cc) - __(Sergey D)__ chore: config refactor 
Do not subclass from OpenStruct. See attr_extras

* 2015-09-21 [4be6e4b](../../commit/4be6e4b) - __(Долганов Сергей)__ chore: remove problem dev dependancy 
* 2015-09-21 [92426ff](../../commit/92426ff) - __(Долганов Сергей)__ test: adds TravisCI badge 
* 2015-09-21 [9ba248e](../../commit/9ba248e) - __(Sergey D)__ chore: use code-climate 
* 2015-09-21 [3463534](../../commit/3463534) - __(Долганов Сергей)__ chore: move gem usage to proper place 
* 2015-09-21 [b2ac5e2](../../commit/b2ac5e2) - __(Sergey D)__ test: fix floating 
* 2015-09-20 [a41b447](../../commit/a41b447) - __(Sergey D)__ fix: minor fixes 
* 2015-09-20 [dcca110](../../commit/dcca110) - __(Sergey D)__ feat: Initial commit 
