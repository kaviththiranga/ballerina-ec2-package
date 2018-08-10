
documentation {
    Define an EC2 Query
    F{{Action}}             -   The action to perform. Example: RunInstances
    F{{Version}}            -   The API version to use.
    F{{AWSAccessKeyId}}     -   The access key ID for the request sender. 
                                This identifies the account which will be charged for usage of the service. 
                                The account that's associated with the access key ID must be signed up for Amazon EC2, 
                                or the request isn't accepted.
                                Example: AKIAIOSFODNN7EXAMPLE
    F{{Expires}}            -   The date and time at which the signature included in the request expires,
                                in the format YYYY-MM-DDThh:mm:ssZ. For more information, see [ISO 8601](https://www.w3.org/TR/NOTE-datetime).

                                Example: 2006-07-07T15:04:56Z
    F{{Timestamp}}          -   The date and time at which the request is signed, in the format YYYY-MM-DDThh:mm:ssZ. 
                                For more information, see [ISO 8601](https://www.w3.org/TR/NOTE-datetime).

                                Example: 2006-07-07T15:04:56Z

    F{{Signature}}          -   The request signature.

                                Example: Qnpl4Qk/7tINHzfXCiT7VEXAMPLE
    
    F{{SignatureMethod}}    -   The hash algorithm you use to create the request signature. Valid values: HmacSHA256 | HmacSHA1.

                                Example: HmacSHA256

    F{{SignatureVersion}}   -   The signature version you use to sign the request. Set this value to 2.

                                Example: 2
    
    F{{DryRun}}             -   Checks whether you have the required permissions for the action, without actually making the request. 
                                If you have the required permissions, the request returns DryRunOperation; otherwise, it returns UnauthorizedOperation.

    F{{SecurityToken}}      -   The temporary security token obtained through a call to AWS Security Token Service.

                                Example: AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKwRcOIfrRh3c/L                           
}
public type Query record {
    string Action;
    string Version;
    string AWSAccessKeyId;
    string? Expires;
    string? Timestamp;
    string Signature;
    string SignatureMethod = "HmacSHA256";
    int SignatureVersion = 2;
    boolean? DryRun = false;
    string? SecurityToken;
};