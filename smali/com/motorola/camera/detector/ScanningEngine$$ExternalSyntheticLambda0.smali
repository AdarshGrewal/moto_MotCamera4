.class public final synthetic Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/detector/ScanningEngine;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/ReportFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/detector/ScanningEngine;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_6

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 3
    check-cast p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {v2, p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->isSameTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/Tidbit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v2, p1}, Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v2, p1}, Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;->onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    goto :goto_1

    .line 12
    :cond_4
    monitor-exit v0

    goto :goto_3

    .line 13
    :cond_5
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    move v1, v2

    :cond_7
    :goto_3
    return v1

    .line 15
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/ReportFragment;

    sget v0, Lcom/motorola/camera/fragments/ReportFragment;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 p1, 0x3

    if-eq v0, p1, :cond_8

    goto :goto_6

    .line 17
    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    invoke-virtual {p0}, Landroid/widget/SimpleCursorTreeAdapter;->notifyDataSetInvalidated()V

    goto :goto_6

    .line 18
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    .line 19
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_c

    .line 20
    iget-object v2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    invoke-virtual {v2, p1, v0}, Landroid/widget/SimpleCursorTreeAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 22
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_6

    .line 23
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    if-eqz p1, :cond_c

    .line 24
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 26
    :goto_5
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorTreeAdapter;->getGroupCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    invoke-virtual {p1, v2}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 29
    new-instance v0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
