.class public Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# direct methods
.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_0

    .line 1
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 2
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move v14, v1

    move-object v15, v2

    move/from16 v16, v12

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_71

    .line 5
    aget-object v1, v15, v9

    .line 6
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    const/16 v17, 0x0

    const/4 v3, 0x3

    const/16 v8, 0x8

    const/4 v5, 0x1

    if-nez v2, :cond_18

    .line 7
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    mul-int/2addr v2, v12

    .line 8
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v7, v6

    const/16 v18, 0x0

    :goto_2
    if-nez v18, :cond_13

    .line 9
    iget v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    add-int/2addr v13, v5

    iput v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 10
    iget-object v13, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    aput-object v17, v13, v4

    .line 11
    iget-object v13, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v17, v13, v4

    .line 12
    iget v13, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-eq v13, v8, :cond_e

    .line 13
    iget v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mVisibleWidgets:I

    add-int/2addr v13, v5

    iput v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mVisibleWidgets:I

    .line 14
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour$enumunboxing$(I)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 15
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    iget v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    if-nez v13, :cond_1

    .line 16
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    goto :goto_3

    :cond_1
    if-ne v13, v5, :cond_2

    .line 17
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    :goto_3
    add-int/2addr v4, v13

    .line 18
    iput v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    .line 19
    :cond_3
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    iget-object v13, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v13, v4

    iput v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    .line 20
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v21, v2, 0x1

    aget-object v4, v4, v21

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v4, v13

    iput v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    .line 21
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalMargins:I

    iget-object v13, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v13, v4

    iput v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalMargins:I

    .line 22
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v4, v13

    iput v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalMargins:I

    .line 23
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v4, :cond_4

    .line 24
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 25
    :cond_4
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 26
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    iget v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    aget v8, v4, v13

    if-ne v8, v3, :cond_e

    .line 27
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v22, v8, v13

    if-eqz v22, :cond_5

    aget v5, v8, v13

    if-eq v5, v3, :cond_5

    aget v5, v8, v13

    if-ne v5, v12, :cond_e

    .line 28
    :cond_5
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    const/16 v22, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 29
    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v23, v5, v13

    const/16 v20, 0x0

    cmpl-float v24, v23, v20

    if-lez v24, :cond_6

    .line 30
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    aget v5, v5, v13

    add-float/2addr v12, v5

    iput v12, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 31
    :cond_6
    iget v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v12, 0x8

    if-eq v5, v12, :cond_8

    .line 32
    aget v4, v4, v13

    if-ne v4, v3, :cond_8

    aget v4, v8, v13

    if-eqz v4, :cond_7

    aget v4, v8, v13

    if-ne v4, v3, :cond_8

    :cond_7
    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_b

    const/4 v4, 0x0

    cmpg-float v5, v23, v4

    if-gez v5, :cond_9

    const/4 v4, 0x1

    .line 33
    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    goto :goto_5

    :cond_9
    const/4 v4, 0x1

    .line 34
    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 35
    :goto_5
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-nez v4, :cond_a

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 37
    :cond_a
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_b
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v4, :cond_c

    .line 39
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 40
    :cond_c
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v4, :cond_d

    .line 41
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    aput-object v6, v4, v5

    .line 42
    :cond_d
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :cond_e
    if-eq v7, v6, :cond_f

    .line 43
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    aput-object v6, v4, v5

    .line 44
    :cond_f
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_10

    .line 45
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 46
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v7, v5, v2

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v7, :cond_10

    aget-object v5, v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eq v5, v6, :cond_11

    :cond_10
    move-object/from16 v4, v17

    :cond_11
    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move-object v4, v6

    const/16 v18, 0x1

    :goto_6
    move-object v7, v6

    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v12, 0x2

    move-object v6, v4

    goto/16 :goto_2

    .line 47
    :cond_13
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v4, :cond_14

    .line 48
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    sub-int/2addr v5, v4

    iput v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    .line 49
    :cond_14
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v4, :cond_15

    .line 50
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    sub-int/2addr v5, v2

    iput v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    .line 51
    :cond_15
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 52
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    if-nez v2, :cond_16

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mIsRtl:Z

    if-eqz v2, :cond_16

    .line 53
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    goto :goto_7

    .line 54
    :cond_16
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 55
    :goto_7
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    if-eqz v2, :cond_17

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    const/4 v2, 0x1

    goto :goto_9

    :cond_18
    move v2, v5

    .line 56
    :goto_9
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    if-eqz v11, :cond_1a

    .line 57
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_a

    :cond_19
    move/from16 v18, v9

    move-object v12, v10

    move/from16 v29, v14

    move-object/from16 v31, v15

    const/16 v19, 0x0

    goto/16 :goto_45

    .line 58
    :cond_1a
    :goto_a
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 59
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 60
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 61
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 62
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 63
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 64
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v5, v5, p3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x1

    goto :goto_b

    :cond_1b
    const/4 v5, 0x0

    :goto_b
    if-nez p3, :cond_1e

    .line 65
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v6, 0x1

    if-nez v3, :cond_1c

    const/16 v22, 0x1

    goto :goto_c

    :cond_1c
    const/16 v22, 0x0

    :goto_c
    if-ne v3, v6, :cond_1d

    move/from16 v23, v6

    const/4 v6, 0x2

    goto :goto_d

    :cond_1d
    const/4 v6, 0x2

    const/16 v23, 0x0

    :goto_d
    move/from16 v24, v22

    if-ne v3, v6, :cond_21

    goto :goto_10

    .line 66
    :cond_1e
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v6, 0x1

    if-nez v3, :cond_1f

    const/16 v24, 0x1

    goto :goto_e

    :cond_1f
    const/16 v24, 0x0

    :goto_e
    if-ne v3, v6, :cond_20

    const/4 v6, 0x2

    const/16 v23, 0x1

    goto :goto_f

    :cond_20
    const/4 v6, 0x2

    const/16 v23, 0x0

    :goto_f
    if-ne v3, v6, :cond_21

    :goto_10
    const/4 v3, 0x1

    goto :goto_11

    :cond_21
    const/4 v3, 0x0

    :goto_11
    move/from16 v26, v4

    move-object v6, v12

    const/16 v25, 0x0

    :goto_12
    if-nez v25, :cond_2f

    .line 67
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, v16

    if-eqz v3, :cond_22

    const/16 v28, 0x1

    goto :goto_13

    :cond_22
    const/16 v28, 0x4

    .line 68
    :goto_13
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v29

    move/from16 v30, v9

    .line 69
    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v9, v9, p3

    const/4 v11, 0x3

    if-ne v9, v11, :cond_23

    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v9, v9, p3

    if-nez v9, :cond_23

    const/4 v9, 0x1

    goto :goto_14

    :cond_23
    const/4 v9, 0x0

    .line 70
    :goto_14
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v11, :cond_24

    if-eq v6, v12, :cond_24

    .line 71
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v29, v11, v29

    :cond_24
    move/from16 v11, v29

    if-eqz v3, :cond_25

    if-eq v6, v12, :cond_25

    if-eq v6, v8, :cond_25

    move/from16 v29, v14

    const/16 v28, 0x8

    goto :goto_15

    :cond_25
    move/from16 v29, v14

    .line 72
    :goto_15
    iget-object v14, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_29

    if-ne v6, v8, :cond_26

    move-object/from16 v31, v15

    .line 73
    iget-object v15, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v32, v2

    const/4 v2, 0x6

    invoke-virtual {v10, v15, v14, v11, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_16

    :cond_26
    move-object/from16 v32, v2

    move-object/from16 v31, v15

    .line 74
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v14, v11, v15}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_16
    if-eqz v9, :cond_27

    if-nez v3, :cond_27

    const/16 v28, 0x5

    :cond_27
    if-ne v6, v8, :cond_28

    if-eqz v3, :cond_28

    .line 75
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aget-boolean v2, v2, p3

    if-eqz v2, :cond_28

    const/4 v2, 0x5

    goto :goto_17

    :cond_28
    move/from16 v2, v28

    .line 76
    :goto_17
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v10, v9, v4, v11, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_18

    :cond_29
    move-object/from16 v32, v2

    move-object/from16 v31, v15

    :goto_18
    if-eqz v5, :cond_2b

    .line 77
    iget v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2a

    .line 78
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v2, v2, p3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2a

    .line 79
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v4, v2, v4

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v2, v2, v16

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v9, 0x5

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v2, v11, v9}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_19

    :cond_2a
    const/4 v11, 0x0

    .line 80
    :goto_19
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v16

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, v16

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v9, 0x8

    invoke-virtual {v10, v2, v4, v11, v9}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 81
    :cond_2b
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_2c

    .line 82
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 83
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v9, v4, v16

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v9, :cond_2c

    aget-object v4, v4, v16

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eq v4, v6, :cond_2d

    :cond_2c
    move-object/from16 v2, v17

    :cond_2d
    if-eqz v2, :cond_2e

    move-object v6, v2

    goto :goto_1a

    :cond_2e
    const/16 v25, 0x1

    :goto_1a
    move-object/from16 v11, p2

    move/from16 v14, v29

    move/from16 v9, v30

    move-object/from16 v15, v31

    move-object/from16 v2, v32

    goto/16 :goto_12

    :cond_2f
    move-object/from16 v32, v2

    move/from16 v30, v9

    move/from16 v29, v14

    move-object/from16 v31, v15

    if-eqz v7, :cond_33

    .line 84
    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_33

    .line 85
    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v4

    .line 86
    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v6, v6, p3

    const/4 v9, 0x3

    if-ne v6, v9, :cond_30

    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v6, v6, p3

    if-nez v6, :cond_30

    const/4 v6, 0x1

    goto :goto_1b

    :cond_30
    const/4 v6, 0x0

    :goto_1b
    if-eqz v6, :cond_31

    if-nez v3, :cond_31

    .line 87
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v9, v0, :cond_31

    .line 88
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    neg-int v11, v11

    const/4 v14, 0x5

    invoke-virtual {v10, v9, v6, v11, v14}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_1c

    :cond_31
    const/4 v14, 0x5

    if-eqz v3, :cond_32

    .line 89
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v9, v0, :cond_32

    .line 90
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    neg-int v11, v11

    const/4 v15, 0x4

    invoke-virtual {v10, v9, v6, v11, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 91
    :cond_32
    :goto_1c
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v9, v4

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 92
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    const/4 v9, 0x6

    .line 93
    invoke-virtual {v10, v6, v4, v2, v9}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_1d

    :cond_33
    const/4 v14, 0x5

    :goto_1d
    if-eqz v5, :cond_34

    .line 94
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v5, v4

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v4, v5, v4

    .line 95
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    const/16 v5, 0x8

    .line 96
    invoke-virtual {v10, v2, v6, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 97
    :cond_34
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-eqz v2, :cond_3e

    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3e

    .line 99
    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v6, :cond_35

    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v6, :cond_35

    .line 100
    iget v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v6, v6

    goto :goto_1e

    :cond_35
    move/from16 v6, v26

    :goto_1e
    move-object/from16 v15, v17

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_1f
    if-ge v11, v4, :cond_3e

    .line 101
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 102
    iget-object v14, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v14, v14, p3

    const/16 v18, 0x0

    cmpg-float v25, v14, v18

    if-gez v25, :cond_37

    .line 103
    iget-boolean v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v14, :cond_36

    .line 104
    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, v16, 0x1

    aget-object v5, v0, v5

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v0, v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    const/4 v14, 0x4

    invoke-virtual {v10, v5, v0, v2, v14}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move/from16 v25, v14

    move v14, v2

    goto :goto_21

    :cond_36
    move-object/from16 v18, v2

    const/4 v2, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v25, 0x4

    goto :goto_20

    :cond_37
    move-object/from16 v18, v2

    const/16 v25, 0x4

    const/4 v2, 0x0

    :goto_20
    cmpl-float v26, v14, v2

    if-nez v26, :cond_38

    .line 105
    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v0, v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v0, v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v5, 0x8

    const/4 v14, 0x0

    invoke-virtual {v10, v2, v0, v14, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    :goto_21
    move-object/from16 v34, v1

    move/from16 v33, v4

    move/from16 v26, v6

    move/from16 v19, v14

    const/16 v20, 0x0

    goto/16 :goto_26

    :cond_38
    const/16 v19, 0x0

    if-eqz v15, :cond_3d

    .line 106
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v15, v2, v16

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    add-int/lit8 v27, v16, 0x1

    .line 107
    aget-object v2, v2, v27

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 108
    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v33, v4

    aget-object v4, v0, v16

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 109
    aget-object v0, v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v27, v5

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v5

    move-object/from16 v34, v1

    const/4 v1, 0x0

    .line 111
    iput v1, v5, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    cmpl-float v20, v6, v1

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v20, :cond_3c

    cmpl-float v20, v9, v14

    if-nez v20, :cond_39

    goto :goto_23

    :cond_39
    const/16 v20, 0x0

    cmpl-float v35, v9, v20

    if-nez v35, :cond_3a

    .line 112
    iget-object v0, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v15, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 113
    iget-object v0, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, v2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_22

    :cond_3a
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v26, :cond_3b

    .line 114
    iget-object v2, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, v4, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 115
    iget-object v1, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v0, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    :goto_22
    move/from16 v26, v6

    goto :goto_24

    :cond_3b
    div-float/2addr v9, v6

    div-float v26, v14, v6

    div-float v9, v9, v26

    move/from16 v26, v6

    .line 116
    iget-object v6, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v6, v15, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 117
    iget-object v1, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-interface {v1, v2, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 118
    iget-object v1, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, v0, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 119
    iget-object v0, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    neg-float v1, v9

    invoke-interface {v0, v4, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_24

    :cond_3c
    :goto_23
    move/from16 v26, v6

    const/16 v20, 0x0

    move v6, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 120
    iget-object v9, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v9, v15, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 121
    iget-object v9, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v9, v2, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 122
    iget-object v2, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, v0, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 123
    iget-object v0, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, v4, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 124
    :goto_24
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_25

    :cond_3d
    move-object/from16 v34, v1

    move/from16 v33, v4

    move-object/from16 v27, v5

    move/from16 v26, v6

    const/16 v20, 0x0

    :goto_25
    move v9, v14

    move-object/from16 v15, v27

    :goto_26
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v18

    move/from16 v6, v26

    move/from16 v4, v33

    move-object/from16 v1, v34

    const/4 v5, 0x1

    const/4 v14, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_1f

    :cond_3e
    move-object/from16 v34, v1

    const/16 v19, 0x0

    const/16 v25, 0x4

    if-eqz v8, :cond_45

    if-eq v8, v7, :cond_3f

    if-eqz v3, :cond_45

    .line 125
    :cond_3f
    iget-object v0, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, v16

    .line 126
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    .line 127
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_40

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object v3, v0

    goto :goto_27

    :cond_40
    move-object/from16 v3, v17

    .line 128
    :goto_27
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_41

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object v6, v0

    goto :goto_28

    :cond_41
    move-object/from16 v6, v17

    .line 129
    :goto_28
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, v16

    if-eqz v7, :cond_42

    .line 130
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    :cond_42
    if-eqz v3, :cond_44

    if-eqz v6, :cond_44

    if-nez p3, :cond_43

    move-object/from16 v2, v32

    .line 131
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_29

    :cond_43
    move-object/from16 v2, v32

    .line 132
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    :goto_29
    move v5, v2

    .line 133
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 134
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 135
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v11, 0x7

    move-object/from16 v1, p1

    const/4 v14, 0x2

    move-object v15, v7

    move-object v7, v0

    move-object v0, v8

    move v8, v9

    move/from16 v18, v30

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_35

    :cond_44
    move-object v15, v7

    move-object v0, v8

    move/from16 v18, v30

    const/4 v14, 0x2

    move-object v12, v10

    goto/16 :goto_41

    :cond_45
    move-object v15, v7

    move-object v0, v8

    move/from16 v18, v30

    const/4 v14, 0x2

    if-eqz v24, :cond_58

    if-eqz v0, :cond_58

    move-object/from16 v1, v34

    .line 136
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v2, :cond_46

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    if-ne v1, v2, :cond_46

    const/16 v22, 0x1

    goto :goto_2a

    :cond_46
    move/from16 v22, v19

    :goto_2a
    move-object v9, v0

    move-object v11, v9

    :goto_2b
    if-eqz v11, :cond_57

    .line 137
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, p3

    move-object v8, v1

    :goto_2c
    if-eqz v8, :cond_47

    .line 138
    iget v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v7, 0x8

    if-ne v1, v7, :cond_48

    .line 139
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v8, v1, p3

    goto :goto_2c

    :cond_47
    const/16 v7, 0x8

    :cond_48
    if-nez v8, :cond_4a

    if-ne v11, v15, :cond_49

    goto :goto_2d

    :cond_49
    move v10, v7

    move-object v14, v8

    move-object/from16 v20, v9

    goto/16 :goto_33

    .line 140
    :cond_4a
    :goto_2d
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    .line 141
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 142
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4b

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_2e

    :cond_4b
    move-object/from16 v3, v17

    :goto_2e
    if-eq v9, v11, :cond_4c

    .line 143
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_2f

    :cond_4c
    if-ne v11, v0, :cond_4e

    .line 144
    iget-object v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v3, v16

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_4d

    aget-object v3, v3, v16

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_2f

    :cond_4d
    move-object/from16 v3, v17

    .line 145
    :cond_4e
    :goto_2f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 146
    iget-object v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    if-eqz v8, :cond_4f

    .line 147
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v16

    .line 148
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_30

    .line 149
    :cond_4f
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_50

    .line 150
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_30

    :cond_50
    move-object/from16 v7, v17

    .line 151
    :goto_30
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v14, v14, v5

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v6, :cond_51

    .line 152
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v4, v6

    .line 153
    :cond_51
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v6, v1

    if-eqz v2, :cond_55

    if-eqz v3, :cond_55

    if-eqz v7, :cond_55

    if-eqz v14, :cond_55

    if-ne v11, v0, :cond_52

    .line 154
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move v6, v1

    :cond_52
    if-ne v11, v15, :cond_53

    .line 155
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v20, v1

    goto :goto_31

    :cond_53
    move/from16 v20, v4

    :goto_31
    if-eqz v22, :cond_54

    const/16 v25, 0x8

    goto :goto_32

    :cond_54
    const/16 v25, 0x5

    :goto_32
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    const/4 v10, 0x5

    move v4, v6

    move-object v6, v7

    const/16 v21, 0x8

    move-object v7, v14

    move-object v14, v8

    move/from16 v10, v21

    move/from16 v8, v20

    move-object/from16 v20, v9

    move/from16 v9, v25

    .line 156
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_33

    :cond_55
    move-object v14, v8

    move-object/from16 v20, v9

    const/16 v10, 0x8

    .line 157
    :goto_33
    iget v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-eq v1, v10, :cond_56

    move-object v9, v11

    goto :goto_34

    :cond_56
    move-object/from16 v9, v20

    :goto_34
    move-object/from16 v10, p1

    move-object v11, v14

    const/4 v14, 0x2

    goto/16 :goto_2b

    :cond_57
    :goto_35
    move-object/from16 v12, p1

    goto/16 :goto_41

    :cond_58
    move-object/from16 v1, v34

    const/16 v10, 0x8

    if-eqz v23, :cond_57

    if-eqz v0, :cond_57

    .line 158
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v2, :cond_59

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    if-ne v1, v2, :cond_59

    const/16 v22, 0x1

    goto :goto_36

    :cond_59
    move/from16 v22, v19

    :goto_36
    move-object v11, v0

    move-object v14, v11

    :goto_37
    if-eqz v11, :cond_64

    .line 159
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, p3

    :goto_38
    if-eqz v1, :cond_5a

    .line 160
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-ne v2, v10, :cond_5a

    .line 161
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, p3

    goto :goto_38

    :cond_5a
    if-eq v11, v0, :cond_62

    if-eq v11, v15, :cond_62

    if-eqz v1, :cond_62

    if-ne v1, v15, :cond_5b

    move-object/from16 v9, v17

    goto :goto_39

    :cond_5b
    move-object v9, v1

    .line 162
    :goto_39
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    .line 163
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 164
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 165
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 166
    iget-object v5, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    if-eqz v9, :cond_5d

    .line 167
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v16

    .line 168
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 169
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v8, :cond_5c

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_3b

    :cond_5c
    move-object/from16 v8, v17

    goto :goto_3b

    .line 170
    :cond_5d
    iget-object v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v16

    if-eqz v6, :cond_5e

    .line 171
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_3a

    :cond_5e
    move-object/from16 v7, v17

    .line 172
    :goto_3a
    iget-object v8, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v8, v8, v4

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    :goto_3b
    if-eqz v6, :cond_5f

    .line 173
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v6, v5

    move/from16 v20, v6

    goto :goto_3c

    :cond_5f
    move/from16 v20, v5

    .line 174
    :goto_3c
    iget-object v5, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v22, :cond_60

    move/from16 v21, v10

    goto :goto_3d

    :cond_60
    move/from16 v21, v25

    :goto_3d
    if-eqz v2, :cond_61

    if-eqz v3, :cond_61

    if-eqz v7, :cond_61

    if-eqz v8, :cond_61

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v6, v7

    move-object v7, v8

    move/from16 v8, v20

    move-object/from16 v20, v9

    move/from16 v9, v21

    .line 175
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_3e

    :cond_61
    move-object/from16 v20, v9

    :goto_3e
    move-object/from16 v8, v20

    goto :goto_3f

    :cond_62
    move-object v8, v1

    .line 176
    :goto_3f
    iget v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-eq v1, v10, :cond_63

    move-object v14, v11

    :cond_63
    move-object v11, v8

    goto/16 :goto_37

    .line 177
    :cond_64
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    .line 178
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v16

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 179
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v10, v3, v4

    .line 180
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, v4

    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_66

    if-eq v0, v15, :cond_65

    .line 181
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move-object/from16 v12, p1

    const/4 v14, 0x5

    invoke-virtual {v12, v3, v2, v1, v14}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_40

    :cond_65
    move-object/from16 v12, p1

    const/4 v14, 0x5

    if-eqz v11, :cond_67

    .line 182
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v7, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v8, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 183
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    const/16 v20, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move/from16 v9, v20

    .line 184
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_40

    :cond_66
    move-object/from16 v12, p1

    const/4 v14, 0x5

    :cond_67
    :goto_40
    if-eqz v11, :cond_68

    if-eq v0, v15, :cond_68

    .line 185
    iget-object v1, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v12, v1, v2, v3, v14}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    :cond_68
    :goto_41
    if-nez v24, :cond_69

    if-eqz v23, :cond_70

    :cond_69
    if-eqz v0, :cond_70

    if-eq v0, v15, :cond_70

    .line 186
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v1, v16

    if-nez v15, :cond_6a

    move-object v8, v0

    goto :goto_42

    :cond_6a
    move-object v8, v15

    .line 187
    :goto_42
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    .line 188
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_6b

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_43

    :cond_6b
    move-object/from16 v5, v17

    .line 189
    :goto_43
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_6c

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_44

    :cond_6c
    move-object/from16 v6, v17

    :goto_44
    if-eq v13, v8, :cond_6e

    .line 190
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v4

    .line 191
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_6d

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v17, v6

    :cond_6d
    move-object/from16 v6, v17

    :cond_6e
    if-ne v0, v8, :cond_6f

    .line 192
    aget-object v2, v1, v16

    .line 193
    aget-object v3, v1, v4

    :cond_6f
    if-eqz v5, :cond_70

    if-eqz v6, :cond_70

    const/high16 v0, 0x3f000000    # 0.5f

    .line 194
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    .line 195
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    .line 196
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v10, 0x5

    move-object/from16 v1, p1

    move-object v3, v5

    move v4, v7

    move v5, v0

    move-object v7, v9

    move v9, v10

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_70
    :goto_45
    add-int/lit8 v9, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move-object v10, v12

    move/from16 v14, v29

    move-object/from16 v15, v31

    const/4 v12, 0x2

    goto/16 :goto_1

    :cond_71
    return-void
.end method
