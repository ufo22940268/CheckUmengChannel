.class final Lcom/gridlayout/GridLayout$PackedMap;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gridlayout/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final index:[I

.field public final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;)V"
        }
    .end annotation

    .prologue
    .line 1885
    .local p0, this:Lcom/gridlayout/GridLayout$PackedMap;,"Lcom/gridlayout/GridLayout$PackedMap<TK;TV;>;"
    .local p1, keys:[Ljava/lang/Object;,"[TK;"
    .local p2, values:[Ljava/lang/Object;,"[TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1886
    invoke-static {p1}, Lcom/gridlayout/GridLayout$PackedMap;->createIndex([Ljava/lang/Object;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$PackedMap;->index:[I

    .line 1888
    iget-object v0, p0, Lcom/gridlayout/GridLayout$PackedMap;->index:[I

    invoke-static {p1, v0}, Lcom/gridlayout/GridLayout$PackedMap;->compact([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    .line 1889
    iget-object v0, p0, Lcom/gridlayout/GridLayout$PackedMap;->index:[I

    invoke-static {p2, v0}, Lcom/gridlayout/GridLayout$PackedMap;->compact([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    .line 1890
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;Lcom/gridlayout/GridLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1880
    .local p0, this:Lcom/gridlayout/GridLayout$PackedMap;,"Lcom/gridlayout/GridLayout$PackedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/gridlayout/GridLayout$PackedMap;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private static compact([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;[I)[TK;"
        }
    .end annotation

    .prologue
    .line 1917
    .local p0, a:[Ljava/lang/Object;,"[TK;"
    array-length v3, p0

    .line 1918
    .local v3, size:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1919
    .local v0, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, -0x1

    invoke-static {p1, v4}, Lcom/gridlayout/GridLayout;->max2([II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 1922
    .local v2, result:[Ljava/lang/Object;,"[TK;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1923
    aget v4, p1, v1

    aget-object v5, p0, v1

    aput-object v5, v2, v4

    .line 1922
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1925
    :cond_0
    return-object v2
.end method

.method private static createIndex([Ljava/lang/Object;)[I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;)[I"
        }
    .end annotation

    .prologue
    .line 1897
    .local p0, keys:[Ljava/lang/Object;,"[TK;"
    array-length v5, p0

    .line 1898
    .local v5, size:I
    new-array v4, v5, [I

    .line 1900
    .local v4, result:[I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1901
    .local v3, keyToIndex:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 1902
    aget-object v2, p0, v0

    .line 1903
    .local v2, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1904
    .local v1, index:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 1905
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1906
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v0

    .line 1901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1910
    .end local v1           #index:Ljava/lang/Integer;
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :cond_1
    return-object v4
.end method


# virtual methods
.method public getValue(I)Ljava/lang/Object;
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 1893
    .local p0, this:Lcom/gridlayout/GridLayout$PackedMap;,"Lcom/gridlayout/GridLayout$PackedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/gridlayout/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/gridlayout/GridLayout$PackedMap;->index:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
