# Notes
Personal archive of notes taken for education

## Deploying

1. Run the Makefile to build notebook as static webpage

    ```sh
    $ make -j 8 all
    ```

2. Commit and push changes to `_site/`

3. On push, GitHub actions will publish `_site/`