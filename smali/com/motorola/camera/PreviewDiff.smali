.class public Lcom/motorola/camera/PreviewDiff;
.super Ljava/lang/Object;
.source "PreviewDiff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/PreviewDiff$Action;
    }
.end annotation


# instance fields
.field public action:Lcom/motorola/camera/PreviewDiff$Action;

.field public mAutoClear:Z

.field public mBeginRect:Landroid/graphics/RectF;

.field public mBeginScale:F

.field public mCropAspect:F

.field public mEndRect:Landroid/graphics/RectF;

.field public mFinish:Z

.field public mFromMode:I

.field public mScale:F

.field public mScaleTranslate:F

.field public mSourceRatio:F

.field public mTargetRatio:F

.field public mToMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/PreviewDiff$Action;->NONE:Lcom/motorola/camera/PreviewDiff$Action;

    iput-object v0, p0, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mSourceRatio:F

    .line 4
    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mCropAspect:F

    .line 5
    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    .line 7
    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mScaleTranslate:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/PreviewDiff;->mFinish:Z

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/PreviewDiff;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/motorola/camera/PreviewDiff$Action;->NONE:Lcom/motorola/camera/PreviewDiff$Action;

    iput-object v0, p0, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mSourceRatio:F

    .line 13
    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mCropAspect:F

    .line 14
    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    iput v1, p0, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    .line 16
    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mScaleTranslate:F

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/motorola/camera/PreviewDiff;->mFinish:Z

    .line 18
    iput-boolean v0, p0, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    .line 19
    iget v0, p1, Lcom/motorola/camera/PreviewDiff;->mCropAspect:F

    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mCropAspect:F

    .line 20
    iget v0, p1, Lcom/motorola/camera/PreviewDiff;->mScale:F

    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mScale:F

    .line 21
    iget v0, p1, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    .line 22
    iget v0, p1, Lcom/motorola/camera/PreviewDiff;->mScaleTranslate:F

    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mScaleTranslate:F

    .line 23
    iget v0, p1, Lcom/motorola/camera/PreviewDiff;->mSourceRatio:F

    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mSourceRatio:F

    .line 24
    iget v0, p1, Lcom/motorola/camera/PreviewDiff;->mFromMode:I

    iput v0, p0, Lcom/motorola/camera/PreviewDiff;->mFromMode:I

    .line 25
    iget p1, p1, Lcom/motorola/camera/PreviewDiff;->mToMode:I

    iput p1, p0, Lcom/motorola/camera/PreviewDiff;->mToMode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PreviewDiff{action="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCropAspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewDiff;->mCropAspect:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewDiff;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBeginScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaleTranslate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewDiff;->mScaleTranslate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewDiff;->mSourceRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTargetRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewDiff;->mTargetRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBeginRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEndRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFromMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewDiff;->mFromMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mToMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewDiff;->mToMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFinish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/PreviewDiff;->mFinish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoClear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
