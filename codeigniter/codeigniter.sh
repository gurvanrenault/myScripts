SCRIPT_PATH="$( cd -P "$( dirname "$SOURCE" )" && pwd )";
cd  $1 ; 
mkdir  $2 ;
echo  "Create the folder "$2"...."
cd  $2 ;
###############################################
echo  "Clone Code Igniter ..."
git clone https://github.com/bcit-ci/CodeIgniter.git;
mv ./CodeIgniter/* ./;
rm -rf ./CodeIgniter;
###############################################
echo  "Initialize templates ";
cp -r $SCRIPT_PATH"/templates/" $1$2/application/views/;
##############################################
echo  "Download  boostrap";
mkdir css;
cd  css;
wget "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" --show-progress;
touch style.css;
