.class Lsdk/download/c;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/app/NotificationManager;

.field final synthetic b:Lsdk/download/b;


# direct methods
.method constructor <init>(Lsdk/download/b;Landroid/app/NotificationManager;)V
    .locals 0

    iput-object p1, p0, Lsdk/download/c;->b:Lsdk/download/b;

    iput-object p2, p0, Lsdk/download/c;->a:Landroid/app/NotificationManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lsdk/download/c;->b:Lsdk/download/b;

    invoke-static {v0}, Lsdk/download/b;->a(Lsdk/download/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsdk/download/c;->b:Lsdk/download/b;

    invoke-static {v0}, Lsdk/download/b;->b(Lsdk/download/b;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lsdk/download/c;->b:Lsdk/download/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsdk/download/b;->a(Lsdk/download/b;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lsdk/download/c;->b:Lsdk/download/b;

    invoke-static {v0}, Lsdk/download/b;->a(Lsdk/download/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    iget-object v0, p0, Lsdk/download/c;->b:Lsdk/download/b;

    invoke-static {v0}, Lsdk/download/b;->c(Lsdk/download/b;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    iget-object v0, p0, Lsdk/download/c;->b:Lsdk/download/b;

    invoke-static {v0}, Lsdk/download/b;->d(Lsdk/download/b;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lsdk/download/c;->b:Lsdk/download/b;

    invoke-static {v0}, Lsdk/download/b;->d(Lsdk/download/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lsdk/download/c;->b:Lsdk/download/b;

    invoke-static {v0}, Lsdk/download/b;->d(Lsdk/download/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lsdk/download/c;->b:Lsdk/download/b;

    invoke-static {v2}, Lsdk/download/b;->a(Lsdk/download/b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsdk/download/c;->b:Lsdk/download/b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lsdk/download/b;->a(Lsdk/download/b;I)Lsdk/download/d;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lsdk/download/c;->b:Lsdk/download/b;

    iget-object v4, p0, Lsdk/download/c;->a:Landroid/app/NotificationManager;

    invoke-static {v3, v4, v2}, Lsdk/download/b;->a(Lsdk/download/b;Landroid/app/NotificationManager;Lsdk/download/d;)Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Lsdk/download/c;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lsdk/download/q;->a(I)I

    move-result v0

    invoke-virtual {v3, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lsdk/download/c;->b:Lsdk/download/b;

    invoke-static {v0}, Lsdk/download/b;->d(Lsdk/download/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method
