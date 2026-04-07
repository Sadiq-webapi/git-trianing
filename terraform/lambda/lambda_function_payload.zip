// index.js
exports.handler = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify("Hello from Lambda!")
  };
};



//Run the zip command to package it:

bash
rm -f lambda_function_payload.zip   # remove any broken file
zip lambda_function_payload.zip index.js
Verify the archive:

bash
unzip -l lambda_function_payload.zip
You should see:

Code
Archive:  lambda_function_payload.zip
  Length   Date   Time   Name
--------  ----   ----   ----
     123  ...    ...    index.js
--------
Now run:

bash
terraform plan
terraform apply
//
