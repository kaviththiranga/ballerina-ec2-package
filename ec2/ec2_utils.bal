import ballerina/crypto;
import ballerina/http;

function signQuery(map ec2Query, string secretKey) returns string {
    crypto:Algorithm algorithm = crypto:SHA256;
    string queryString = getStringQuery(ec2Query);
    return crypto:hmac(queryString, secretKey, algorithm , keyEncoding = UTF_8);
}

function getStringQuery(map ec2Query) returns string {
    string[] queryKeys = ec2Query.keys();
    string[] newArr = [];
    foreach key in queryKeys {
        byte[] bytes = key.toByteArray(UTF_8);
    }
    return string `Hello {{<string>ec2Query.Action}}!!!`;
}

// function bubbleSortComponents (string[] components) {
//     int count = 0;
//     while (count < components.count()) {
//         sweep()
//         count++;
//     }
// }

function sweepComponents(string[] components) {
    
}

function createQuery (
    string Action,
    string Version,
    string AWSAccessKeyId,
    string Expires,
    string Timestamp,
    string Signature,
    string SignatureMethod = "HmacSHA256",
    int SignatureVersion = 2,
    boolean DryRun = false,
    string SecurityToken,
    (string, any)... rest) returns map {
    map commonComponents = {
        Action: Action,
        Version: Version,
        AWSAccessKeyId: AWSAccessKeyId,
        Signature: Signature,
        SignatureMethod: SignatureMethod,
        SignatureVersion: SignatureVersion,
        DryRun: DryRun,
        SecurityToken: SecurityToken
    };
    foreach customComponent in rest {
        commonComponents[customComponent[0]] = customComponent[1];
    }
    return commonComponents;
}