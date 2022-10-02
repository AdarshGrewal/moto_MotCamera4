.class public Lcom/motorola/camera/fragments/CalibrationDataFragment;
.super Landroidx/fragment/app/Fragment;
.source "CalibrationDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperationsRunnable;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$GetDataFromDBThreadFactory;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListChildClickListener;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mExpandableListView:Landroid/widget/ExpandableListView;

.field public final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public mOpenGroupSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 2
    const-class v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/Set;

    .line 4
    new-instance v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final doDataIO(Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetDataFromDBThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetDataFromDBThreadFactory;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 3
    :cond_1
    new-instance v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperationsRunnable;

    invoke-direct {v0, p1}, Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperationsRunnable;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error executing current measure runnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13

    move-object v9, p0

    const v0, 0x7f0d0071

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f0a0076

    .line 2
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    sget-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->QCOM_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v2}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f11007b

    .line 6
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v2, v7, v1

    .line 7
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a009d

    .line 11
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v11, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 14
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v2, v11

    :goto_1
    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11007a

    .line 17
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 18
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0a009c

    .line 22
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, v9, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 23
    new-instance v2, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListChildClickListener;

    invoke-direct {v2, v11}, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListChildClickListener;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment$1;)V

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    const v0, 0x7f0a0161

    .line 25
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 26
    iget-object v2, v9, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 27
    new-instance v12, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

    .line 28
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f0d0074

    const-string v0, "keytype"

    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [I

    const v0, 0x7f0a0395

    aput v0, v5, v1

    const v6, 0x7f0d0072

    const-string v0, "keytag"

    const-string v1, "calbrtnvalue"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Landroid/content/Context;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v12, v9, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    .line 30
    new-instance v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V

    invoke-virtual {v12, v0}, Landroid/widget/SimpleCursorTreeAdapter;->setViewBinder(Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;)V

    .line 31
    iget-object v0, v9, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, v9, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 32
    new-instance v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;

    invoke-direct {v0, p0, v11}, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Lcom/motorola/camera/fragments/CalibrationDataFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fragments/CalibrationDataFragment;->doDataIO(Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;)V

    return-object v10

    :array_0
    .array-data 4
        0x7f0a0395
        0x7f0a039d
    .end array-data
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SimpleCursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method
