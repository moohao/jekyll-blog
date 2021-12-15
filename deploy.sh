jekyll build
scp -r ./_site/ deployer@mohao.space:/var/www/blog/temp/
ssh deployer@mohao.space "rm -r /var/www/blog/_site && mv /var/www/blog/temp /var/www/blog/_site && sudo -S service nginx reload"