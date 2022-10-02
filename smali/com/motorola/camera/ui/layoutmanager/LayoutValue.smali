.class public final enum Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
.super Ljava/lang/Enum;
.source "LayoutValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/layoutmanager/LayoutValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;


# instance fields
.field public carouselBottom:F

.field public height:F

.field public mCaptureBarMargin:F

.field public modeControlBarSize:F

.field public preview169Align:I

.field public preview43Align:I

.field public previewCropSize:F

.field public uiBottomAlign:I

.field public uiToggleAlign:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

.field public width:F


# direct methods
.method public static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v14, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v15, Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;->PREVIEW_BOTTOM:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    const-string v1, "Layout16_9"

    const/4 v2, 0x0

    const/high16 v3, 0x44200000    # 640.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42800000    # 64.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    move-object v0, v14

    move v10, v11

    move-object v13, v15

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V

    sput-object v14, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 2
    new-instance v16, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout18_9"

    const/4 v2, 0x1

    const/high16 v3, 0x44340000    # 720.0f

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v11, 0x3

    move-object/from16 v0, v16

    move v10, v11

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V

    .line 3
    new-instance v17, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout189_9"

    const/4 v2, 0x2

    const/high16 v3, 0x443d0000    # 756.0f

    const/high16 v5, 0x42100000    # 36.0f

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V

    .line 4
    new-instance v18, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout19_9"

    const/4 v2, 0x3

    const/high16 v3, 0x443e0000    # 760.0f

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x2

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V

    .line 5
    new-instance v19, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout195_9"

    const/4 v2, 0x4

    const/high16 v3, 0x44430000    # 780.0f

    const/high16 v6, 0x42100000    # 36.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/4 v11, 0x1

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V

    .line 6
    new-instance v20, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout20_9"

    const/4 v2, 0x5

    const/high16 v3, 0x44480000    # 800.0f

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x4

    move-object/from16 v0, v20

    move v10, v11

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V

    sput-object v20, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 7
    new-instance v21, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout205_9"

    const/4 v2, 0x6

    const/high16 v3, 0x444d0000    # 820.0f

    const/high16 v6, 0x42600000    # 56.0f

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V

    sput-object v21, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 8
    new-instance v36, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v13, Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;->PREVIEW_UNDER:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    const-string v23, "Layout21_9"

    const/16 v24, 0x7

    const/high16 v25, 0x44520000    # 840.0f

    const/high16 v26, 0x43b40000    # 360.0f

    const/high16 v27, 0x40c00000    # 6.0f

    const/high16 v28, 0x42880000    # 68.0f

    const/high16 v29, 0x42800000    # 64.0f

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x3

    const/16 v34, 0x4

    move-object/from16 v22, v36

    move/from16 v32, v33

    move-object/from16 v35, v13

    invoke-direct/range {v22 .. v35}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V

    sput-object v36, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 9
    new-instance v22, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout22_9"

    const/16 v2, 0x8

    const/high16 v3, 0x445c0000    # 880.0f

    const/high16 v5, 0x41d00000    # 26.0f

    const/high16 v6, 0x42900000    # 72.0f

    const/high16 v7, 0x42b00000    # 88.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v12, 0x3

    move-object/from16 v0, v22

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V

    sput-object v22, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 10
    new-instance v23, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout4_3"

    const/16 v2, 0x9

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, v23

    move v10, v11

    move-object v13, v15

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const/4 v1, 0x0

    aput-object v14, v0, v1

    const/4 v1, 0x1

    aput-object v16, v0, v1

    const/4 v1, 0x2

    aput-object v17, v0, v1

    const/4 v1, 0x3

    aput-object v18, v0, v1

    const/4 v1, 0x4

    aput-object v19, v0, v1

    const/4 v1, 0x5

    aput-object v20, v0, v1

    const/4 v1, 0x6

    aput-object v21, v0, v1

    const/4 v1, 0x7

    aput-object v36, v0, v1

    const/16 v1, 0x8

    aput-object v22, v0, v1

    const/16 v1, 0x9

    aput-object v23, v0, v1

    .line 11
    sput-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->$VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFFFFFFFIIILcom/motorola/camera/ui/layoutmanager/ToggleAlign;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFFF",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p4, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    .line 3
    iput p3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    .line 4
    iput p6, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->carouselBottom:F

    .line 5
    iput p7, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->modeControlBarSize:F

    .line 6
    iput p8, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    .line 7
    iput p9, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->mCaptureBarMargin:F

    .line 8
    iput p10, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    .line 9
    iput p11, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    .line 10
    iput p12, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiBottomAlign:I

    .line 11
    iput-object p13, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiToggleAlign:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->$VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-object v0
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    cmpl-float v1, v0, p0

    if-lez v1, :cond_0

    div-float/2addr v0, p0

    return v0

    :cond_0
    div-float/2addr p0, v0

    return p0
.end method
