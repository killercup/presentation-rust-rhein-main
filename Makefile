INPUT ?= Rust-in-5-min

slides:
	pandoc $(INPUT).md \
	--to revealjs \
	--template template/index.html \
	--output $(INPUT).html \
	-V revealjs-url=template \
	-V theme=solarized \
	-V progress=true \
	-V slideNumber=true \
	-V history=true \
	--standalone --slide-level 2
