type X xml;
type RX readonly & X;

type N xml<never>;
type T xml:Text;
type E readonly & xml:Element;
type P readonly & xml:ProcessingInstruction;
type C readonly & xml:Comment;
type XE xml<E>;
type XP xml<P>;
type XC xml<C>;

type S T|E|P|C;

// @type NonEmptyS < S
// @type NonEmptyS <> T
// @type NonEmptyS <> N
// @type E < NonEmptyS
// @type P < NonEmptyS
// @type C < NonEmptyS
type NonEmptyS S & !N;

// @type NonEmptyS < UX
type UX XE|XP|XC|T;

// @type XNonEmptyS = RX
// @type XNonEmptyS < X
type XNonEmptyS xml<NonEmptyS>;

// @type XUX = RX
type XUX xml<UX>;

type NEVER never;
type RWX X & !readonly;

// @type RX_MINUS_RO = NEVER
type RX_MINUS_RO RX & RWX;

// @type RX_UNION_RO = X
type RX_UNION_RO RX | RWX;

