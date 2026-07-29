import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure Formation where
  groupClass : Set Type
  subgroupClosed : Prop
  quotientClosed : Prop
  residualCharacter : Prop

def FormationClosed (F : Formation) : Prop :=
  F.subgroupClosed ∧ F.quotientClosed ∧ F.residualCharacter

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse