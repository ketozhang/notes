from pathlib import Path

NOTEBOOKS = "Astrophysics Computer_Science Data_Science Finance Mathematics Physics Others".split(" ")

for notebook in  NOTEBOOKS:
    notebook_path = Path(notebook)

    for path in notebook_path.glob("**"):
        if path.is_file():
            continue

        index_file = path / "index.md"
        if index_file.exists():
            continue
        else:
            title = path.stem.replace("_", " ")
            with index_file.open("w") as f:
                text = f"# {title}\n"
                print(f"{path=} {title=} {text=}")
                f.write(text)

        assert index_file.exists()
