SWBFIII Stormtrooper MK2 for SWBFII

I decided to modify Anakin's Stormtrooper release as I always felt the face had a squashed appearance. So I took the face from the TFU Stormtrooper, redid the UVs to fit the texture of the SWBF3 model, andc created some variants.

The following variants are included:

-Standard Stormtrooper
-Shock Trooper (Red markings plus backpack)
-Sand Trooper
-Magma Trooper

You are free to make modifications as you wish.

Special thanks and credits go to Anakin and the people listed below, and to the following:

LucasArts: TFU Stormtrooper face mesh, TFU pauldron, backpack and ammo packs.

======================
ORIGINAL README
======================

SWBFIII Stormtrooper for SWBFII

Credits and special thanks:
Free Radical - for the model
Corra_Ashu (alias clonetrooper163) - for converting to fbx and publishing
AceMastermind - for having patience with me
me (Anakin) - porting and enveloping for SWBFII.


How to use:
Make sure you have all files copieed to your project:
msh:
     imp_bf3_stormtrooper.msh
     imp_bf3_stormtrooper.msh.option
     Storm_Trooper_Diff.tga
     Storm_Trooper_Normal.tga
     Storm_Trooper_Normal.tga.option
munged:
     swbfiii.zafbin

I included basepose.msh if you need to munge custom animation sets.

In the odf add this:
| SkeletonName		= "swbfiii" |

after
| GeometryName        = "imp_bf3_stormtrooper" |

The msh contains an shadow and lowrez volume.

Open the Stormtrooper_bug.jpg and check whether the elbow looks like the
right picture. If it looks like the left one, you did something wrong with
the Skeleton.