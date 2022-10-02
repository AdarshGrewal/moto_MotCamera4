.class public Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;,
        Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    }
.end annotation


# direct methods
.method public static loadAnimation(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .locals 6

    .line 1
    iget-object v0, p2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 3
    :goto_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v2

    .line 4
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 5
    iget v3, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const v4, 0x7f0a0431

    .line 6
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    :cond_1
    iget-object p1, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object v3

    :cond_2
    if-eqz v2, :cond_6

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    :try_start_0
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 12
    new-instance v4, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v4, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 13
    throw p0

    :catch_1
    :cond_4
    :goto_1
    if-nez v1, :cond_6

    .line 14
    :try_start_1
    invoke-static {p0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 15
    new-instance v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v1, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v1

    :catch_2
    move-exception p2

    if-nez p1, :cond_5

    .line 16
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 17
    new-instance p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 18
    :cond_5
    throw p2

    :cond_6
    if-nez v0, :cond_7

    return-object v3

    :cond_7
    const/16 p1, 0x1001

    if-eq v0, p1, :cond_c

    const/16 p1, 0x1003

    if-eq v0, p1, :cond_a

    const/16 p1, 0x2002

    if-eq v0, p1, :cond_8

    const/4 p1, -0x1

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_9

    const p1, 0x7f010022

    goto :goto_2

    :cond_9
    const p1, 0x7f010023

    goto :goto_2

    :cond_a
    if-eqz p3, :cond_b

    const p1, 0x7f010024

    goto :goto_2

    :cond_b
    const p1, 0x7f010025

    goto :goto_2

    :cond_c
    if-eqz p3, :cond_d

    const p1, 0x7f010027

    goto :goto_2

    :cond_d
    const p1, 0x7f010028

    :goto_2
    if-gez p1, :cond_e

    return-object v3

    .line 19
    :cond_e
    new-instance p2, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-direct {p2, p0}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p2
.end method
