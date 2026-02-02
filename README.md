```
% ./sub/repro.sh                                                               
+ bazel build @sub//:absl_app_smoke_binary_image_tarball.tar
INFO: Analyzed target @@sub+//:absl_app_smoke_binary_image_tarball.tar (0 packages loaded, 0 targets configured).
INFO: Found 1 target...
Target @@sub+//:absl_app_smoke_binary_image_tarball.tar up-to-date:
  bazel-bin/external/sub+/absl_app_smoke_binary_image_tarball/tarball.tar
INFO: Elapsed time: 0.227s, Critical Path: 0.00s
INFO: 1 process: 1 internal.
INFO: Build completed successfully, 1 total action
+ docker load -i bazel-bin/external/sub+/absl_app_smoke_binary_image_tarball/tarball.tar
Loaded image: absl_app_smoke_binary_image:latest
+ docker run -it --rm absl_app_smoke_binary_image:latest
Traceback (most recent call last):
  File "/absl_app_smoke_binary.runfiles/sub+/_absl_app_smoke_binary_stage2_bootstrap.py", line 499, in <module>
    main()
  File "/absl_app_smoke_binary.runfiles/sub+/_absl_app_smoke_binary_stage2_bootstrap.py", line 493, in main
    _run_py_path(main_filename, args=sys.argv[1:])
  File "/absl_app_smoke_binary.runfiles/sub+/_absl_app_smoke_binary_stage2_bootstrap.py", line 287, in _run_py_path
    runpy.run_path(main_filename, run_name="__main__")
  File "<frozen runpy>", line 291, in run_path
  File "<frozen runpy>", line 98, in _run_module_code
  File "<frozen runpy>", line 88, in _run_code
  File "/absl_app_smoke_binary.runfiles/sub+/absl_app_smoke_binary.py", line 1, in <module>
    from absl import app
ModuleNotFoundError: No module named 'absl'
```
