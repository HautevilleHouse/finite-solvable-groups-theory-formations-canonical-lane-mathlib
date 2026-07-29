import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure GaschuetzTheoremProps where
  saturatedFormation : SaturatedFormation
  projectiveCoverExistence : Prop
  projectiveCoverUniqueness : Prop
  preFrattiniCharacterization : Prop

def GaschuetzTheoremClosed (G : GaschuetzTheoremProps) : Prop :=
  SaturatedFormationClosed G.saturatedFormation ∧ G.projectiveCoverExistence ∧ G.projectiveCoverUniqueness ∧ G.preFrattiniCharacterization

theorem gaschuetz_theorem_closure (G : GaschuetzTheoremProps) (h : GaschuetzTheoremClosed G) : GaschuetzTheoremClosed G := h

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse