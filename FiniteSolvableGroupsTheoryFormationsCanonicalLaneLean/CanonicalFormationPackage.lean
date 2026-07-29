import FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.FormationProperties

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure CanonicalFormationPackage (F : Formation)
    (P : FormationPropertiesPackage F) where
  saturatedClosure : Prop
  schunckClosure : Prop
  gaschuetzClosure : Prop
  latticeClosure : Prop

structure CanonicalFormationEvidence {F : Formation}
    {P : FormationPropertiesPackage F} (C : CanonicalFormationPackage F P) where
  saturatedClosureClosed : C.saturatedClosure
  schunckClosureClosed : C.schunckClosure
  gaschuetzClosureClosed : C.gaschuetzClosure
  latticeClosureClosed : C.latticeClosure

def CanonicalFormationClosed {F : Formation}
    {P : FormationPropertiesPackage F} (C : CanonicalFormationPackage F P) : Prop :=
  C.saturatedClosure ∧ C.schunckClosure ∧ C.gaschuetzClosure ∧ C.latticeClosure

theorem canonical_formation_closed_from_evidence {F : Formation}
    {P : FormationPropertiesPackage F} (C : CanonicalFormationPackage F P)
    (E : CanonicalFormationEvidence C) : CanonicalFormationClosed C := by
  exact And.intro E.saturatedClosureClosed
    (And.intro E.schunckClosureClosed
      (And.intro E.gaschuetzClosureClosed E.latticeClosureClosed))

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse