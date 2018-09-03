SCRIPT_PATH="$( cd -P "$( dirname "$SOURCE" )" && pwd )";
cd  /var/www/html/ ; 
mkdir  $1 ;
echo  "Create the folder ... "$1
cd  $1 ;
###############################################
echo  "Clone Code Igniter ..."
git clone https://github.com/bcit-ci/CodeIgniter.git;
mv ./CodeIgniter/* ./
rm -rf ./CodeIgniter
###############################################
echo  "Initialize templates "
cp -r $SCRIPT_PATH"/templates/" /var/www/html/$1/application/views/
##############################################
echo  "Download  boostrap"
mkdir css
cd  css
wget "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" --show-progress
touch style.css
