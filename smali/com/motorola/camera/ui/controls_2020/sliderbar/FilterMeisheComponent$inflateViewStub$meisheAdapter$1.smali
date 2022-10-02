.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;
.super Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;
.source "FilterMeisheComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->inflateViewStub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 1

    if-ltz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-nez v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->adjustToCenter(I)V

    .line 5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->setSelectedFilter(I)V

    :cond_3
    return-void
.end method
