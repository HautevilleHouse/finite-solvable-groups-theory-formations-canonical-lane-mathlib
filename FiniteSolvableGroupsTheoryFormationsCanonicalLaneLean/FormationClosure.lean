import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure Formation (G : Type u) [Group G] where
  isFormation : Prop
  subgroupClosed : Prop
  quotientClosed : Prop

structure FormationEvidence (F : Formation G) where
  isFormationClosed : F.isFormation
  subgroupClosedClosed : F.subgroupClosed
  quotientClosedClosed : F.quotientClosed

def FormationClosed (F : Formation G) : Prop :=
  F.isFormation ∧ F.subgroupClosed ∧ F.quotientClosed

theorem formation_closed_from_evidence (F : Formation G) (E : FormationEvidence F) : FormationClosed F := by
  exact And.intro E.isFormationClosed (And.intro E.subgroupClosedClosed E.quotientClosedClosed)

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse