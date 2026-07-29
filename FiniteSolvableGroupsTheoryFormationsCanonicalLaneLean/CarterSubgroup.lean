import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.FormationClass

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure CarterSubgroupPackage {F : FormationClass} where
  subgroup : Prop
  selfNormalizing : Prop
  nilpotent : Prop
  covering : Prop
  existenceInSolvable : Prop

structure CarterSubgroupEvidence {F : FormationClass} (C : CarterSubgroupPackage F) where
  subgroupClosed : C.subgroup
  selfNormalizingClosed : C.selfNormalizing
  nilpotentClosed : C.nilpotent
  coveringClosed : C.covering
  existenceInSolvableClosed : C.existenceInSolvable

def CarterSubgroupClosed {F : FormationClass} (C : CarterSubgroupPackage F) : Prop :=
  C.subgroup ∧ C.selfNormalizing ∧ C.nilpotent ∧ C.covering ∧ C.existenceInSolvable

theorem carter_subgroup_closed_from_evidence {F : FormationClass} (C : CarterSubgroupPackage F)
    (E : CarterSubgroupEvidence C) : CarterSubgroupClosed C := by
  exact And.intro E.subgroupClosed
    (And.intro E.selfNormalizingClosed
      (And.intro E.nilpotentClosed
        (And.intro E.coveringClosed E.existenceInSolvableClosed)))

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse