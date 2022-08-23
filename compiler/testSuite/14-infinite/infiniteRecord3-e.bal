type R1 record {| R2 f; |}; // @error

type R2 record {| R1 f; |};
