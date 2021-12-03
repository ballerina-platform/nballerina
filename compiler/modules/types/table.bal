// Implementation specific to basic type table.

public function tableContaining(SemType memberType) returns SemType {
    SubtypeData ro = subtypeData(memberType, UT_MAPPING_RO);
    SubtypeData rw = subtypeData(memberType, UT_MAPPING_RW);
    return createTableSemtype(ro, rw);
    
}

function createTableSemtype(SubtypeData ro, SubtypeData rw) returns ComplexSemType {
    if ro == false {
        return createComplexSemType(0, [[UT_TABLE_RW, rw]]);
    }
    else if rw == false {
        return createComplexSemType(0, [[UT_TABLE_RO, ro]]); 
    }
    else {
        return createComplexSemType(0, [[UT_TABLE_RO, ro], [UT_TABLE_RW, rw]]);
    }
}

final UniformTypeOps tableRoOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingRoSubtypeIsEmpty
};

final UniformTypeOps tableRwOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingSubtypeIsEmpty
};
