.class public Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;
.super Ljava/lang/Object;
.source "LayoutBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;
    }
.end annotation


# instance fields
.field public mHeight:I

.field public mLayoutType:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

.field public mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->FIXED:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mLayoutType:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mWidth:I

    .line 5
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mLayoutType:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mWidth:I

    .line 9
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mHeight:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LayoutBounds{mHeight="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mLayoutType:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
