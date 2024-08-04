# Notes
Personal archive of notes taken for education.

GitHub Actions CI will build and deploy on changes to main.

## Local Deploy

1. Clone https://github.com/ketozhang/Journal to `src/

2. Run the Makefile to build notebook as static webpage

    ```sh
    $ make -j 8 all
    ```

3. Commit and push changes to `_site/` with commit prefix `[skip ci]`

4. Trigger the [publish workflow](https://github.com/ketozhang/notes/actions/workflows/publish.yml)
