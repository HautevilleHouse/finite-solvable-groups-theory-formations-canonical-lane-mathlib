import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure LocalFormationDef where
  primeSet : Set ℕ
  localFormation : Formation
  closureUnderResidues : Prop

def LocalFormationDefClosed (L : LocalFormationDef) : Prop :=
  FormationClosed L.localFormation ∧ L.closureUnderResidues

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse