.class final Lcom/gridlayout/k;
.super Ljava/util/ArrayList;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gridlayout/k;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/gridlayout/k;->b:Ljava/lang/Class;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/gridlayout/k;
    .locals 1

    new-instance v0, Lcom/gridlayout/k;

    invoke-direct {v0, p0, p1}, Lcom/gridlayout/k;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/gridlayout/q;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/gridlayout/k;->size()I

    move-result v5

    iget-object v0, p0, Lcom/gridlayout/k;->a:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/gridlayout/k;->b:Ljava/lang/Class;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    new-instance v2, Lcom/gridlayout/q;

    invoke-direct {v2, v0, v1, v4}, Lcom/gridlayout/q;-><init>([Ljava/lang/Object;[Ljava/lang/Object;B)V

    return-object v2

    :cond_0
    invoke-virtual {p0, v3}, Lcom/gridlayout/k;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gridlayout/r;

    iget-object v2, v2, Lcom/gridlayout/r;->a:Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-virtual {p0, v3}, Lcom/gridlayout/k;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gridlayout/r;

    iget-object v2, v2, Lcom/gridlayout/r;->b:Ljava/lang/Object;

    aput-object v2, v1, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/gridlayout/r;

    invoke-direct {v0, p1, p2}, Lcom/gridlayout/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/gridlayout/k;->add(Ljava/lang/Object;)Z

    return-void
.end method
