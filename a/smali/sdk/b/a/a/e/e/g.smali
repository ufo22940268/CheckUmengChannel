.class public Lsdk/b/a/a/e/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/c/a/e/a/c;


# static fields
.field private static a:Lsdk/b/a/a/e/e/g;


# instance fields
.field private b:Ljava/util/Map;

.field private c:Lsdk/c/a/b/d;


# direct methods
.method public constructor <init>(Lsdk/c/a/b/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/b/a/a/e/e/g;->c:Lsdk/c/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsdk/b/a/a/e/e/g;->b:Ljava/util/Map;

    invoke-virtual {p1, p0}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/a/c;)Z

    return-void
.end method

.method public static declared-synchronized a(Lsdk/c/a/b/d;)Lsdk/b/a/a/e/e/g;
    .locals 2

    const-class v1, Lsdk/b/a/a/e/e/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsdk/b/a/a/e/e/g;->a:Lsdk/b/a/a/e/e/g;

    if-nez v0, :cond_0

    new-instance v0, Lsdk/b/a/a/e/e/g;

    invoke-direct {v0, p0}, Lsdk/b/a/a/e/e/g;-><init>(Lsdk/c/a/b/d;)V

    sput-object v0, Lsdk/b/a/a/e/e/g;->a:Lsdk/b/a/a/e/e/g;

    :cond_0
    sget-object v0, Lsdk/b/a/a/e/e/g;->a:Lsdk/b/a/a/e/e/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILsdk/b/a/a/e/e/d;)Z
    .locals 6

    new-instance v0, Lsdk/b/a/a/e/e/f;

    iget-object v3, p0, Lsdk/b/a/a/e/e/g;->c:Lsdk/c/a/b/d;

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lsdk/b/a/a/e/e/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lsdk/c/a/b/d;ILsdk/b/a/a/e/e/d;)V

    invoke-virtual {v0}, Lsdk/b/a/a/e/e/f;->b()V

    iget-object v1, p0, Lsdk/b/a/a/e/e/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lsdk/b/a/a/e/e/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lsdk/c/a/e/a/f;Lsdk/c/a/e/e;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Lsdk/c/a/e/a/f;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lsdk/b/a/a/e/e/f;->a(Lsdk/c/a/e/a/f;Lsdk/c/a/e/e;)Z

    move-result v0

    invoke-virtual {v1}, Lsdk/b/a/a/e/e/f;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsdk/b/a/a/e/e/g;->b:Ljava/util/Map;

    iget-object v1, v1, Lsdk/b/a/a/e/e/f;->c:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    return v0

    :pswitch_0
    iget-object v1, p0, Lsdk/b/a/a/e/e/g;->b:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lsdk/b/a/a/e/e/c;

    iget-object v0, v0, Lsdk/b/a/a/e/e/c;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/e/e/f;

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lsdk/b/a/a/e/e/g;->b:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lsdk/b/a/a/e/e/b;

    iget-object v0, v0, Lsdk/b/a/a/e/e/b;->h:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/e/e/f;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x88801
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lsdk/c/a/e/d;Lsdk/c/a/e/e;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lsdk/c/a/e/d;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lsdk/b/a/a/e/e/f;->a(Lsdk/c/a/e/d;Lsdk/c/a/e/e;)Z

    move-result v0

    invoke-virtual {v1}, Lsdk/b/a/a/e/e/f;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsdk/b/a/a/e/e/g;->b:Ljava/util/Map;

    iget-object v1, v1, Lsdk/b/a/a/e/e/f;->c:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    return v0

    :sswitch_0
    iget-object v1, p0, Lsdk/b/a/a/e/e/g;->b:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lsdk/b/a/a/e/e/c;

    iget-object v0, v0, Lsdk/b/a/a/e/e/c;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/e/e/f;

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    move-object v0, p1

    check-cast v0, Lsdk/b/a/a/e/b/d;

    iget-object v0, v0, Lsdk/b/a/a/e/b/d;->a:Lsdk/b/a/a/e/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsdk/b/a/a/e/b/c;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lsdk/b/a/a/e/e/g;->b:Ljava/util/Map;

    check-cast v0, Lsdk/b/a/a/e/e/b;

    iget-object v0, v0, Lsdk/b/a/a/e/e/b;->h:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/e/e/f;

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7ffffff7 -> :sswitch_1
        0x88801 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x88802
        :pswitch_0
    .end packed-switch
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()J
    .locals 2

    const-wide/32 v0, 0x13579

    return-wide v0
.end method
