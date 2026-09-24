npm create astro@latest -- --template starlight
cd astrotest

npm run dev   #http://localhost:4321/

npm run build ; python -m http.server 4321 --bind 127.0.0.1 -d ./dist

##########

git clone https://github.com/withastro/starlight.git
#corepack enable
#corepack prepare pnpm@latest --activate
#pnpm approve-builds
#pnpm install
#pnpm dlx @astrojs/upgrade
cd starlight/examples/tailwind
npm run dev

##########

sed -i '/^(/d' *md
yq ".people" ~/www.ccb.jhu.edu/_people/faculty.yaml > src/data/faculty.json 
yq '.software' ~/www.ccb.jhu.edu/_software/all.yaml > src/data/software.json

########

#src/layouts/Layout.astro
#pm install bootstrap

jq '.[].role' src/data/people.json  -r| sort -u

sed 's/faculty/alumni/g; s/Faculty/Alumni/g' src/content/docs/people/faculty.mdx  > src/content/docs/people/alumni.mdx
sed 's/faculty/collaborators/g; s/Faculty/Collaborators/g' src/content/docs/people/faculty.mdx  > src/content/docs/people/collaborators.mdx
sed 's/faculty/postdocs/g; s/Faculty/Postdocs/g' src/content/docs/people/faculty.mdx  > src/content/docs/people/postdocs.mdx
sed 's/faculty/staff/g; s/Faculty/Staff/g' src/content/docs/people/faculty.mdx  > src/content/docs/people/staff.mdx
sed 's/faculty/students/g; s/Faculty/Students/g' src/content/docs/people/faculty.mdx  > src/content/docs/people/students.mdx

###

jq '.[].category' src/data/software.json  -r| sort -u
  "alignment"
  "gene-finding"
  "genome-assembly"
  "metagenomics"
  "other-tools"
  "transcriptome-assembly"
  "variant-analysis"

sed 's/alignment/gene-finding/g; s/Alignment/Gene-finding/g' src/content/docs/software/alignment.mdx   >  src/content/docs/software/gene-finding.mdx
sed 's/alignment/genome-assembly/g; s/Alignment/Genome-assembly/g' src/content/docs/software/alignment.mdx   >  src/content/docs/software/genome-assembly.mdx
sed 's/alignment/metagenomics/g; s/Alignment/Metagenomics/g' src/content/docs/software/alignment.mdx   >  src/content/docs/software/metagenomics.mdx
sed 's/alignment/other-tools/g; s/Alignment/Other-tools/g' src/content/docs/software/alignment.mdx   >  src/content/docs/software/other-tools.mdx
sed 's/alignment/transcriptome-assembly/g; s/Alignment/Transcriptome-assembly/g' src/content/docs/software/alignment.mdx   >  src/content/docs/software/transcriptome-assembly.mdx
sed 's/alignment/variant-analysis/g; s/Alignment/Variant-analysis/g' src/content/docs/software/alignment.mdx   >  src/content/docs/software/variant-analysis.mdx

nano src/pages/people/\[id\].astro 
