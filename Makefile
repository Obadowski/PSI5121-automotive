.PHONY: clean

# Define the LaTeX trash
TRASH_EXTENSIONS = aux log toc out lof lot bbl blg fdb_latexmk fls synctex.gz nav snm

clean:
	@echo "Scouring the academic wasteland for LaTeX garbage..."
	@find . -type f \( $(foreach ext,$(TRASH_EXTENSIONS), -name '*.$(ext)' -o) -false \) -exec rm -v {} +
	@echo "Your sins have been erased. (Temporarily.)"
