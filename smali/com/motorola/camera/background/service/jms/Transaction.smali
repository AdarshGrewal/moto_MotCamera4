.class public final Lcom/motorola/camera/background/service/jms/Transaction;
.super Ljava/lang/Object;
.source "Transaction.kt"


# static fields
.field public static final Companion:Lcom/motorola/camera/background/service/jms/Transaction;

.field public static final DEFAULT_TIMEOUT_MS:J


# instance fields
.field public callerId:I

.field public clientId:I

.field public coProcId:I

.field public comment:Ljava/lang/String;

.field public iCallerId:I

.field public iMsg:Ljava/lang/String;

.field public iMsgType:I

.field public iReturnCode:I

.field public id:J

.field public jobNum:J

.field public markForDelete:Z

.field public msg:Ljava/lang/String;

.field public msgType:I

.field public priority:I

.field public progressInd:I

.field public retryCount:I

.field public returnCode:I

.field public scheduled:Z

.field public sourceId:I

.field public state:Ljava/lang/String;

.field public targetId:I

.field public taskNum:J

.field public timeExpiration:J

.field public ts:J

.field public useFifo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/motorola/camera/background/service/jms/Transaction;->DEFAULT_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    move v1, p3

    .line 3
    iput-boolean v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->markForDelete:Z

    move-wide v1, p4

    .line 4
    iput-wide v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->ts:J

    move v1, p6

    .line 5
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->clientId:I

    move v1, p7

    .line 6
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->sourceId:I

    move v1, p8

    .line 7
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->targetId:I

    move-wide v1, p9

    .line 8
    iput-wide v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->jobNum:J

    move-wide v1, p11

    .line 9
    iput-wide v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->taskNum:J

    move/from16 v1, p13

    .line 10
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->priority:I

    move/from16 v1, p14

    .line 11
    iput-boolean v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->useFifo:Z

    move-object/from16 v1, p15

    .line 12
    iput-object v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->comment:Ljava/lang/String;

    move/from16 v1, p16

    .line 13
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->coProcId:I

    move/from16 v1, p17

    .line 14
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->callerId:I

    move/from16 v1, p18

    .line 15
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->msgType:I

    move-object/from16 v1, p19

    .line 16
    iput-object v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->msg:Ljava/lang/String;

    move/from16 v1, p20

    .line 17
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->returnCode:I

    move/from16 v1, p21

    .line 18
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->iCallerId:I

    move/from16 v1, p22

    .line 19
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->iMsgType:I

    move-object/from16 v1, p23

    .line 20
    iput-object v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->iMsg:Ljava/lang/String;

    move/from16 v1, p24

    .line 21
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->iReturnCode:I

    move-object/from16 v1, p25

    .line 22
    iput-object v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->state:Ljava/lang/String;

    move/from16 v1, p26

    .line 23
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->progressInd:I

    move-wide/from16 v1, p27

    .line 24
    iput-wide v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->timeExpiration:J

    move/from16 v1, p29

    .line 25
    iput-boolean v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->scheduled:Z

    move/from16 v1, p30

    .line 26
    iput v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->retryCount:I

    return-void
.end method

.method public static final getMsgInitial(Lcom/motorola/camera/background/service/jms/Transaction;)Lcom/motorola/camera/background/common/msg/MsgParameters;
    .locals 7

    const-string/jumbo v0, "transaction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgParameters;

    .line 2
    iget v2, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iCallerId:I

    .line 3
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    .line 4
    iget v3, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iMsgType:I

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->map:Ljava/util/Map;

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/msg/MsgType;

    if-nez v1, :cond_0

    .line 8
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->UNKNOWN:Lcom/motorola/camera/background/common/msg/MsgType;

    :cond_0
    move-object v3, v1

    .line 9
    invoke-static {p0}, Lcom/motorola/camera/background/service/jms/Transaction;->getTaskId(Lcom/motorola/camera/background/service/jms/Transaction;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object v4

    .line 10
    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iMsg:Ljava/lang/String;

    .line 11
    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    .line 12
    iget p0, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iReturnCode:I

    .line 13
    invoke-virtual {v1, p0}, Lcom/motorola/camera/background/common/ReturnCode$CREATOR;->intToReturnCode(I)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    :cond_1
    move-object v6, p0

    move-object v1, v0

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    return-object v0
.end method

.method public static final getTaskId(Lcom/motorola/camera/background/service/jms/Transaction;)Lcom/motorola/camera/background/common/TaskId;
    .locals 12

    .line 1
    new-instance v11, Lcom/motorola/camera/background/common/TaskId;

    .line 2
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->clientId:I

    .line 3
    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/Transaction;->jobNum:J

    .line 4
    iget-wide v4, p0, Lcom/motorola/camera/background/service/jms/Transaction;->taskNum:J

    .line 5
    iget v6, p0, Lcom/motorola/camera/background/service/jms/Transaction;->sourceId:I

    .line 6
    iget v7, p0, Lcom/motorola/camera/background/service/jms/Transaction;->targetId:I

    .line 7
    iget v8, p0, Lcom/motorola/camera/background/service/jms/Transaction;->priority:I

    .line 8
    iget-boolean v9, p0, Lcom/motorola/camera/background/service/jms/Transaction;->useFifo:Z

    .line 9
    iget-object v10, p0, Lcom/motorola/camera/background/service/jms/Transaction;->comment:Ljava/lang/String;

    move-object v0, v11

    .line 10
    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    return-object v11
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/Transaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/Transaction;

    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->markForDelete:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->markForDelete:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/Transaction;->ts:J

    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/Transaction;->ts:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->clientId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->clientId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->sourceId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->sourceId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->targetId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->targetId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/Transaction;->jobNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/Transaction;->jobNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/Transaction;->taskNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/Transaction;->taskNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->priority:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->priority:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->useFifo:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->useFifo:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->comment:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->comment:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->coProcId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->coProcId:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->callerId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->callerId:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->msgType:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->msgType:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->msg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->returnCode:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->returnCode:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iCallerId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->iCallerId:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iMsgType:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->iMsgType:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->iMsg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iReturnCode:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->iReturnCode:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->state:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->state:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->progressInd:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->progressInd:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/Transaction;->timeExpiration:J

    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/Transaction;->timeExpiration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->scheduled:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->scheduled:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget p0, p0, Lcom/motorola/camera/background/service/jms/Transaction;->retryCount:I

    iget p1, p1, Lcom/motorola/camera/background/service/jms/Transaction;->retryCount:I

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->markForDelete:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/Transaction;->ts:J

    const/16 v1, 0x1f

    invoke-static {v3, v4, v0, v1}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->clientId:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->sourceId:I

    invoke-static {v1, v0, v3}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->targetId:I

    invoke-static {v1, v0, v3}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/Transaction;->jobNum:J

    const/16 v1, 0x1f

    invoke-static {v3, v4, v0, v1}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/Transaction;->taskNum:J

    invoke-static {v3, v4, v0, v1}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->priority:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->useFifo:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->comment:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->coProcId:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->callerId:I

    invoke-static {v1, v0, v4}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->msgType:I

    invoke-static {v1, v0, v4}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->msg:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->returnCode:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iCallerId:I

    invoke-static {v1, v0, v4}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iMsgType:I

    invoke-static {v1, v0, v4}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iMsg:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iReturnCode:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->state:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->progressInd:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/Transaction;->timeExpiration:J

    const/16 v1, 0x1f

    invoke-static {v3, v4, v0, v1}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->scheduled:Z

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/motorola/camera/background/service/jms/Transaction;->retryCount:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Transaction(id="

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", markForDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->markForDelete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->ts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->clientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->sourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->targetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jobNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->jobNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->taskNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useFifo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->useFifo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coProcId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->coProcId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->callerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", returnCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->returnCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iCallerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iCallerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iMsgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iMsgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iReturnCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->iReturnCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progressInd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->progressInd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeExpiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->timeExpiration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/Transaction;->scheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/background/service/jms/Transaction;->retryCount:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
