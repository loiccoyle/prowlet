.PHONY:readme
readme:
	@awk -i inplace -v q="\`\`\`" 'BEGIN {p=1} /^<!-- help start -->/{print;print "";print q;print "$$ prowlet -h";system("TERM='' ./prowlet -h 2>/dev/null");print q;print "";p=0} /^<!-- help end -->/{p=1} p' README.md
