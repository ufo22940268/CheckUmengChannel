.class final Lcom/gridlayout/m;
.super Ljava/lang/Object;


# instance fields
.field a:[Lcom/gridlayout/j;

.field b:I

.field c:[[Lcom/gridlayout/j;

.field d:[I

.field final synthetic e:Lcom/gridlayout/l;


# direct methods
.method constructor <init>(Lcom/gridlayout/l;[Lcom/gridlayout/j;)V
    .locals 1

    iput-object p1, p0, Lcom/gridlayout/m;->e:Lcom/gridlayout/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    new-array v0, v0, [Lcom/gridlayout/j;

    iput-object v0, p0, Lcom/gridlayout/m;->a:[Lcom/gridlayout/j;

    iget-object v0, p0, Lcom/gridlayout/m;->a:[Lcom/gridlayout/j;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gridlayout/m;->b:I

    invoke-virtual {p1, p2}, Lcom/gridlayout/l;->a([Lcom/gridlayout/j;)[[Lcom/gridlayout/j;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/m;->c:[[Lcom/gridlayout/j;

    invoke-virtual {p1}, Lcom/gridlayout/l;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/gridlayout/m;->d:[I

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 7

    iget-object v0, p0, Lcom/gridlayout/m;->d:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/gridlayout/m;->d:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    iget-object v0, p0, Lcom/gridlayout/m;->c:[[Lcom/gridlayout/j;

    aget-object v1, v0, p1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/gridlayout/m;->d:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    goto :goto_0

    :cond_1
    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/gridlayout/j;->a:Lcom/gridlayout/o;

    iget v4, v4, Lcom/gridlayout/o;->b:I

    invoke-virtual {p0, v4}, Lcom/gridlayout/m;->a(I)V

    iget-object v4, p0, Lcom/gridlayout/m;->a:[Lcom/gridlayout/j;

    iget v5, p0, Lcom/gridlayout/m;->b:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/gridlayout/m;->b:I

    aput-object v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    sget-boolean v0, Lcom/gridlayout/l;->s:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
