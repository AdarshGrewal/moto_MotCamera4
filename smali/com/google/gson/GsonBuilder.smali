.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field public dateStyle:I

.field public escapeHtmlChars:Z

.field public excluder:Lcom/google/gson/internal/Excluder;

.field public final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field public fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field public final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field public longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

.field public prettyPrinting:Z

.field public timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 3
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 4
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 9
    iput v0, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    return-void
.end method


# virtual methods
.method public create()Lcom/google/gson/Gson;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v15, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {v15}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget v1, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    iget v2, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 8
    new-instance v3, Lcom/google/gson/DefaultDateTypeAdapter;

    const-class v4, Ljava/util/Date;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 9
    new-instance v4, Lcom/google/gson/DefaultDateTypeAdapter;

    const-class v5, Ljava/sql/Timestamp;

    invoke-direct {v4, v5, v1, v2}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 10
    new-instance v5, Lcom/google/gson/DefaultDateTypeAdapter;

    const-class v6, Ljava/sql/Date;

    invoke-direct {v5, v6, v1, v2}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 11
    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 12
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v3}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 13
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    const-class v1, Ljava/sql/Timestamp;

    .line 15
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v4}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 16
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    const-class v1, Ljava/sql/Date;

    .line 18
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v5}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 19
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    new-instance v19, Lcom/google/gson/Gson;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v8, v0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v9, v0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    const/4 v13, 0x0

    iget v14, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    iget v5, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    move-object/from16 v18, v15

    move v15, v5

    iget-object v5, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    move-object/from16 v16, v5

    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method
