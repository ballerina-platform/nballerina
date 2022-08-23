type R1 record {| R2 f; |};

type R2 record {| R1 f; |}; // @error
