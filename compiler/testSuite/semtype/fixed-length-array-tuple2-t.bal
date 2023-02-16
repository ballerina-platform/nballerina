type IS int|string;

type ISArray IS[];

// @type ALL1 = ISArray
// @type ALL2 = ISArray
// @type ALL1 = ALL2
type ALL1 []|[IS, IS...];
type ALL2 IS[0]|[IS, IS...];

type ISTuple [IS, IS...];

// @type ALL3 = ISTuple
// @type ALL4 = ISTuple
// @type ALL3 = ALL4
type ALL3 [IS]|[IS, IS, IS...];
type ALL4 IS[1]|[IS, IS, IS...];
