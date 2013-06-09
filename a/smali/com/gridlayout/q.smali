.class final Lcom/gridlayout/q;
.super Ljava/lang/Object;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/gridlayout/q;->a([Ljava/lang/Object;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/q;->a:[I

    iget-object v0, p0, Lcom/gridlayout/q;->a:[I

    invoke-static {p1, v0}, Lcom/gridlayout/q;->a([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/q;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/gridlayout/q;->a:[I

    invoke-static {p2, v0}, Lcom/gridlayout/q;->a([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/q;->c:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/gridlayout/q;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private static a([Ljava/lang/Object;)[I
    .locals 6

    array-length v2, p0

    new-array v3, v2, [I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-object v3

    :cond_0
    aget-object v5, p0, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 5

    array-length v2, p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Lcom/gridlayout/GridLayout;->a([I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    aget v3, p1, v1

    aget-object v4, p0, v1

    aput-object v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/gridlayout/q;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/gridlayout/q;->a:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
