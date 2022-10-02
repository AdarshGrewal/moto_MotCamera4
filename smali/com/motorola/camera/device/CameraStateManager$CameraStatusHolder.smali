.class public Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;
.super Ljava/lang/Object;
.source "CameraStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/CameraStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraStatusHolder"
.end annotation


# instance fields
.field public mIsLinked:Z

.field public mIsMaster:Z

.field public mNeedCloseAfterError:Z

.field public mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

.field public mPreview:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

.field public mSession:Lcom/motorola/camera/device/CameraStateManager$Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;

    iput-object v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    .line 4
    sget-object v0, Lcom/motorola/camera/device/CameraStateManager$StreamStatus;->STOPPED:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    iput-object v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/device/CameraStateManager$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object p1, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;

    iput-object p1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    .line 8
    sget-object p1, Lcom/motorola/camera/device/CameraStateManager$StreamStatus;->STOPPED:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    iput-object p1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;Lcom/motorola/camera/device/CameraStateManager$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object p2, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;

    iput-object p2, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    .line 11
    iput-object p2, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    .line 12
    sget-object p2, Lcom/motorola/camera/device/CameraStateManager$StreamStatus;->STOPPED:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    iput-object p2, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    if-nez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    iput-object p2, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    .line 14
    iget-object p2, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    iput-object p2, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    .line 15
    iget-object p2, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    iput-object p2, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    .line 16
    iget-boolean p2, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z

    iput-boolean p2, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z

    .line 17
    iget-boolean p2, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsLinked:Z

    iput-boolean p2, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsLinked:Z

    .line 18
    iget-boolean p1, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z

    iput-boolean p1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CameraStatusHolder{mOpen="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMaster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLinked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsLinked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedCloseAfterError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
