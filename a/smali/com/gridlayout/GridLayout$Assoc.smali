.class final Lcom/gridlayout/GridLayout$Assoc;
.super Ljava/util/ArrayList;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gridlayout/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Assoc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/gridlayout/GridLayout$Pair",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1839
    .local p0, this:Lcom/gridlayout/GridLayout$Assoc;,"Lcom/gridlayout/GridLayout$Assoc<TK;TV;>;"
    .local p1, keyType:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p2, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1840
    iput-object p1, p0, Lcom/gridlayout/GridLayout$Assoc;->keyType:Ljava/lang/Class;

    .line 1841
    iput-object p2, p0, Lcom/gridlayout/GridLayout$Assoc;->valueType:Ljava/lang/Class;

    .line 1842
    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Class;)Lcom/gridlayout/GridLayout$Assoc;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lcom/gridlayout/GridLayout$Assoc",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1845
    .local p0, keyType:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p1, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Lcom/gridlayout/GridLayout$Assoc;

    invoke-direct {v0, p0, p1}, Lcom/gridlayout/GridLayout$Assoc;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public pack()Lcom/gridlayout/GridLayout$PackedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gridlayout/GridLayout$PackedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1854
    .local p0, this:Lcom/gridlayout/GridLayout$Assoc;,"Lcom/gridlayout/GridLayout$Assoc<TK;TV;>;"
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout$Assoc;->size()I

    move-result v0

    .line 1855
    .local v0, N:I
    iget-object v4, p0, Lcom/gridlayout/GridLayout$Assoc;->keyType:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 1856
    .local v2, keys:[Ljava/lang/Object;,"[TK;"
    iget-object v4, p0, Lcom/gridlayout/GridLayout$Assoc;->valueType:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 1857
    .local v3, values:[Ljava/lang/Object;,"[TV;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1858
    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout$Assoc;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gridlayout/GridLayout$Pair;

    iget-object v4, v4, Lcom/gridlayout/GridLayout$Pair;->first:Ljava/lang/Object;

    aput-object v4, v2, v1

    .line 1859
    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout$Assoc;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gridlayout/GridLayout$Pair;

    iget-object v4, v4, Lcom/gridlayout/GridLayout$Pair;->second:Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 1857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1861
    :cond_0
    new-instance v4, Lcom/gridlayout/GridLayout$PackedMap;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lcom/gridlayout/GridLayout$PackedMap;-><init>([Ljava/lang/Object;[Ljava/lang/Object;Lcom/gridlayout/GridLayout$1;)V

    return-object v4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1849
    .local p0, this:Lcom/gridlayout/GridLayout$Assoc;,"Lcom/gridlayout/GridLayout$Assoc<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-static {p1, p2}, Lcom/gridlayout/GridLayout$Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/gridlayout/GridLayout$Pair;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gridlayout/GridLayout$Assoc;->add(Ljava/lang/Object;)Z

    .line 1850
    return-void
.end method
