# ruby-debug-ide-test
Testing building Ruby 3.0 with ruby-debug-ide

With this build (on master branch), get the below output.

```
$ docker build ./
Sending build context to Docker daemon     64kB
Step 1/7 : FROM ruby:3.1.0-bullseye
 ---> f36ec0de68cd
Step 2/7 : RUN addgroup --gid 2000 app &&     adduser --system --home /home/app --uid 1000 --disabled-password --ingroup app app
 ---> Using cache
 ---> b68b5b0b6537
Step 3/7 : WORKDIR /home/app
 ---> Using cache
 ---> b78d22cb7219
Step 4/7 : COPY --chown=1000:2000 . .
 ---> 7db61be3f864
Step 5/7 : USER 1000:2000
 ---> Running in 77ce8b8f4f25
Removing intermediate container 77ce8b8f4f25
 ---> f6d768baef74
Step 6/7 : ENV BUNDLE_APP_CONFIG=.bundle
 ---> Running in f38db15a37a3
Removing intermediate container f38db15a37a3
 ---> 0766097a5999
Step 7/7 : RUN bundle config --global frozen 1 &&     bundle config set deployment 'true' &&     bundle install
 ---> Running in b68c9d29b4e7
Fetching gem metadata from https://rubygems.org/.....
Fetching rake 13.0.6
Installing rake 13.0.6
Using bundler 2.3.3
Fetching debase-ruby_core_source 0.10.12
Fetching ruby-debug-ide 0.7.3
Installing ruby-debug-ide 0.7.3 with native extensions
Installing debase-ruby_core_source 0.10.12
Fetching debase 0.2.5.beta2
Installing debase 0.2.5.beta2 with native extensions
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

current directory:
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-0.2.5.beta2/ext
/usr/local/bin/ruby -I /usr/local/lib/ruby/3.1.0 -r
./siteconf20220115-9-3zk1xa.rb extconf.rb
checking for vm_core.h... no
checking for vm_core.h... no
**************************************************************************
No source for ruby-3.1.0-p0 (revision fb4df44d1670e9d25aef6b235a7281199a177edb)
provided with
debase-ruby_core_source gem. Falling back to ruby-3.0.0-p0.
**************************************************************************
checking for vm_core.h... yes
checking for iseq.h... no
checking for iseq.h... yes
checking for version.h... yes
creating Makefile

current directory:
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-0.2.5.beta2/ext
make DESTDIR\= clean

current directory:
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-0.2.5.beta2/ext
make DESTDIR\=
compiling breakpoint.c
compiling context.c
compiling debase_internals.c
In file included from
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-ruby_core_source-0.10.12/lib/debase/ruby_core_source/ruby-3.0.0-p0/vm_core.h:85,
                 from ./hacks.h:1,
                 from debase_internals.c:2:
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-ruby_core_source-0.10.12/lib/debase/ruby_core_source/ruby-3.0.0-p0/thread_pthread.h:103:7:
warning: "__APPLE__" is not defined, evaluates to 0 [-Wundef]
  103 |   #if __APPLE__
      |       ^~~~~~~~~
In file included from ./hacks.h:1,
                 from debase_internals.c:2:
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-ruby_core_source-0.10.12/lib/debase/ruby_core_source/ruby-3.0.0-p0/vm_core.h:653:5:
warning: "USE_VM_CLOCK" is not defined, evaluates to 0 [-Wundef]
  653 | #if USE_VM_CLOCK
      |     ^~~~~~~~~~~~
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-ruby_core_source-0.10.12/lib/debase/ruby_core_source/ruby-3.0.0-p0/vm_core.h:853:5:
warning: "USE_VM_CLOCK" is not defined, evaluates to 0 [-Wundef]
  853 | #if USE_VM_CLOCK
      |     ^~~~~~~~~~~~
In file included from ./hacks.h:1,
                 from debase_internals.c:2:
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-ruby_core_source-0.10.12/lib/debase/ruby_core_source/ruby-3.0.0-p0/vm_core.h:
In function ‘rb_current_execution_context’:
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-ruby_core_source-0.10.12/lib/debase/ruby_core_source/ruby-3.0.0-p0/vm_core.h:1785:7:
warning: "__APPLE__" is not defined, evaluates to 0 [-Wundef]
 1785 |   #if __APPLE__
      |       ^~~~~~~~~
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-ruby_core_source-0.10.12/lib/debase/ruby_core_source/ruby-3.0.0-p0/vm_core.h:
In function ‘RUBY_VM_INTERRUPTED_ANY’:
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-ruby_core_source-0.10.12/lib/debase/ruby_core_source/ruby-3.0.0-p0/vm_core.h:1872:5:
warning: "USE_VM_CLOCK" is not defined, evaluates to 0 [-Wundef]
 1872 | #if USE_VM_CLOCK
      |     ^~~~~~~~~~~~
debase_internals.c: In function ‘print_debug’:
debase_internals.c:36:3: warning: function ‘print_debug’ might be a candidate
for ‘gnu_printf’ format attribute [-Wsuggest-attribute=format]
   36 |   vfprintf(stderr, message, ap);
      |   ^~~~~~~~
debase_internals.c: In function ‘count_stack_size’:
debase_internals.c:319:37: warning: initialization discards ‘const’ qualifier
from pointer target type [-Wdiscarded-qualifiers]
319 |     rb_control_frame_t *start_cfp =
RUBY_VM_END_CONTROL_FRAME(TH_INFO(thread));
      |                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/local/include/ruby-3.1.0/ruby/ruby.h:26,
                 from /usr/local/include/ruby-3.1.0/ruby.h:38,
                 from ./debase_internals.h:4,
                 from debase_internals.c:1:
debase_internals.c: In function ‘Init_debase_internals’:
/usr/local/include/ruby-3.1.0/ruby/internal/anyargs.h:337:142: warning: passing
argument 3 of ‘rb_define_module_function_01’ from incompatible pointer type
[-Wincompatible-pointer-types]
337 | #define rb_define_module_function(mod, mid, func, arity)   
RBIMPL_ANYARGS_DISPATCH_rb_define_module_function((arity), (func))((mod), (mid),
(func), (arity))
|                                                                         
^~~~~~
|                                                                         
|
|                                                                         
void (*)(VALUE,  VALUE) {aka void (*)(long unsigned int,  long unsigned int)}
debase_internals.c:770:3: note: in expansion of macro
‘rb_define_module_function’
770 |   rb_define_module_function(mDebase, "set_trace_flag_to_iseq",
Debase_set_trace_flag_to_iseq, 1);
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~
/usr/local/include/ruby-3.1.0/ruby/internal/anyargs.h:273:21: note: expected
‘VALUE (*)(VALUE,  VALUE)’ {aka ‘long unsigned int (*)(long unsigned int,  long
unsigned int)’} but argument is of type ‘void (*)(VALUE,  VALUE)’ {aka ‘void
(*)(long unsigned int,  long unsigned int)’}
  273 | RBIMPL_ANYARGS_DECL(rb_define_module_function, VALUE, const char *)
      |                     ^~~~~~~~~~~~~~~~~~~~~~~~~
/usr/local/include/ruby-3.1.0/ruby/internal/anyargs.h:255:41: note: in
definition of macro ‘RBIMPL_ANYARGS_DECL’
255 | RBIMPL_ANYARGS_ATTRSET(sym) static void sym ## _01(__VA_ARGS__,
VALUE(*)(VALUE, VALUE), int); \
      |                                         ^~~
/usr/local/include/ruby-3.1.0/ruby/internal/anyargs.h:337:142: warning: passing
argument 3 of ‘rb_define_module_function_01’ from incompatible pointer type
[-Wincompatible-pointer-types]
337 | #define rb_define_module_function(mod, mid, func, arity)   
RBIMPL_ANYARGS_DISPATCH_rb_define_module_function((arity), (func))((mod), (mid),
(func), (arity))
|                                                                         
^~~~~~
|                                                                         
|
|                                                                         
void (*)(VALUE,  VALUE) {aka void (*)(long unsigned int,  long unsigned int)}
debase_internals.c:773:3: note: in expansion of macro
‘rb_define_module_function’
773 |   rb_define_module_function(mDebase, "unset_iseq_flags",
Debase_unset_trace_flags, 1);
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~
/usr/local/include/ruby-3.1.0/ruby/internal/anyargs.h:273:21: note: expected
‘VALUE (*)(VALUE,  VALUE)’ {aka ‘long unsigned int (*)(long unsigned int,  long
unsigned int)’} but argument is of type ‘void (*)(VALUE,  VALUE)’ {aka ‘void
(*)(long unsigned int,  long unsigned int)’}
  273 | RBIMPL_ANYARGS_DECL(rb_define_module_function, VALUE, const char *)
      |                     ^~~~~~~~~~~~~~~~~~~~~~~~~
/usr/local/include/ruby-3.1.0/ruby/internal/anyargs.h:255:41: note: in
definition of macro ‘RBIMPL_ANYARGS_DECL’
255 | RBIMPL_ANYARGS_ATTRSET(sym) static void sym ## _01(__VA_ARGS__,
VALUE(*)(VALUE, VALUE), int); \
      |                                         ^~~
debase_internals.c: At top level:
cc1: note: unrecognized command-line option ‘-Wno-self-assign’ may have been
intended to silence earlier diagnostics
cc1: note: unrecognized command-line option ‘-Wno-parentheses-equality’ may have
been intended to silence earlier diagnostics
cc1: note: unrecognized command-line option ‘-Wno-constant-logical-operand’ may
have been intended to silence earlier diagnostics
Assembler messages:
Fatal error: can't create debase_internals.o: No such file or directory
make: *** [Makefile:246: debase_internals.o] Error 1

make failed, exit code 2

Gem files will remain installed in
/home/app/vendor/bundle/ruby/3.1.0/gems/debase-0.2.5.beta2 for inspection.
Results logged to
/home/app/vendor/bundle/ruby/3.1.0/extensions/x86_64-linux/3.1.0/debase-0.2.5.beta2/gem_make.out

  /usr/local/lib/ruby/3.1.0/rubygems/ext/builder.rb:95:in `run'
  /usr/local/lib/ruby/3.1.0/rubygems/ext/builder.rb:44:in `block in make'
  /usr/local/lib/ruby/3.1.0/rubygems/ext/builder.rb:36:in `each'
  /usr/local/lib/ruby/3.1.0/rubygems/ext/builder.rb:36:in `make'
/usr/local/lib/ruby/3.1.0/rubygems/ext/ext_conf_builder.rb:63:in `block in
build'
  /usr/local/lib/ruby/3.1.0/tempfile.rb:317:in `open'
  /usr/local/lib/ruby/3.1.0/rubygems/ext/ext_conf_builder.rb:26:in `build'
  /usr/local/lib/ruby/3.1.0/rubygems/ext/builder.rb:161:in `build_extension'
/usr/local/lib/ruby/3.1.0/rubygems/ext/builder.rb:195:in `block in
build_extensions'
  /usr/local/lib/ruby/3.1.0/rubygems/ext/builder.rb:192:in `each'
  /usr/local/lib/ruby/3.1.0/rubygems/ext/builder.rb:192:in `build_extensions'
  /usr/local/lib/ruby/3.1.0/rubygems/installer.rb:847:in `build_extensions'
/usr/local/lib/ruby/3.1.0/bundler/rubygems_gem_installer.rb:71:in
`build_extensions'
  /usr/local/lib/ruby/3.1.0/bundler/rubygems_gem_installer.rb:28:in `install'
  /usr/local/lib/ruby/3.1.0/bundler/source/rubygems.rb:204:in `install'
  /usr/local/lib/ruby/3.1.0/bundler/installer/gem_installer.rb:54:in `install'
/usr/local/lib/ruby/3.1.0/bundler/installer/gem_installer.rb:16:in
`install_from_spec'
/usr/local/lib/ruby/3.1.0/bundler/installer/parallel_installer.rb:186:in
`do_install'
/usr/local/lib/ruby/3.1.0/bundler/installer/parallel_installer.rb:177:in
`block in worker_pool'
  /usr/local/lib/ruby/3.1.0/bundler/worker.rb:62:in `apply_func'
  /usr/local/lib/ruby/3.1.0/bundler/worker.rb:57:in `block in process_queue'
  /usr/local/lib/ruby/3.1.0/bundler/worker.rb:54:in `loop'
  /usr/local/lib/ruby/3.1.0/bundler/worker.rb:54:in `process_queue'
/usr/local/lib/ruby/3.1.0/bundler/worker.rb:91:in `block (2 levels) in
create_threads'

An error occurred while installing debase (0.2.5.beta2), and Bundler cannot
continue.

In Gemfile:
  debase
```
