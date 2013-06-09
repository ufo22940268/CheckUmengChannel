.class public final Lsdk/c/a/d/b;
.super Landroid/os/Handler;


# instance fields
.field a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Landroid/app/PendingIntent;

.field private m:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lsdk/c/a/d/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/high16 v9, 0x4000

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsdk/c/a/d/b;->e:Ljava/lang/String;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsdk/c/a/d/b;->f:Ljava/lang/String;

    const-string v1, "msgID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lsdk/c/a/d/b;->b:I

    const-string v1, "port"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lsdk/c/a/d/b;->c:I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lsdk/c/a/d/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lsdk/c/a/d/b;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lsdk/c/a/d/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lsdk/c/a/d/b;->d:I

    iget v1, p0, Lsdk/c/a/d/b;->d:I

    if-le v1, v8, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lsdk/c/a/d/b;->d:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lsdk/c/a/d/b;->j:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lsdk/c/a/d/b;->d:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lsdk/c/a/d/b;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lsdk/c/a/d/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "TaskService.SmsTask.SENT.IntentAction"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "msgID"

    iget v7, p0, Lsdk/c/a/d/b;->b:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "msgPartIndex"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "msgParts"

    iget v7, p0, Lsdk/c/a/d/b;->d:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v6, p0, Lsdk/c/a/d/b;->c:I

    if-lez v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lsdk/c/a/d/b;->i:Ljava/util/ArrayList;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lsdk/c/a/d/b;->j:Ljava/util/ArrayList;

    iget-object v6, p0, Lsdk/c/a/d/b;->a:Landroid/content/Context;

    invoke-static {v6, v3, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    const-string v5, "TaskService.SmsTask.DELIVERY.IntentAction"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "msgID"

    iget v6, p0, Lsdk/c/a/d/b;->b:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "msgPartIndex"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "msgParts"

    iget v6, p0, Lsdk/c/a/d/b;->d:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lsdk/c/a/d/b;->k:Ljava/util/ArrayList;

    iget-object v6, p0, Lsdk/c/a/d/b;->a:Landroid/content/Context;

    invoke-static {v6, v3, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v6

    iget-object v6, p0, Lsdk/c/a/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "TaskService.SmsTask.SENT.IntentAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "msgID"

    iget v4, p0, Lsdk/c/a/d/b;->b:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "msgParts"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lsdk/c/a/d/b;->a:Landroid/content/Context;

    invoke-static {v2, v3, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lsdk/c/a/d/b;->l:Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "TaskService.SmsTask.DELIVERY.IntentAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "msgID"

    iget v4, p0, Lsdk/c/a/d/b;->b:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "msgParts"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lsdk/c/a/d/b;->a:Landroid/content/Context;

    invoke-static {v2, v3, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lsdk/c/a/d/b;->m:Landroid/app/PendingIntent;

    iget v1, p0, Lsdk/c/a/d/b;->c:I

    if-lez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lsdk/c/a/d/b;->f:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lsdk/c/a/d/b;->g:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    :try_start_2
    iget v1, p0, Lsdk/c/a/d/b;->d:I

    if-le v1, v8, :cond_5

    iget v1, p0, Lsdk/c/a/d/b;->c:I

    if-lez v1, :cond_4

    iget-object v1, p0, Lsdk/c/a/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v1, p0, Lsdk/c/a/d/b;->e:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lsdk/c/a/d/b;->c:I

    int-to-short v3, v3

    iget-object v5, p0, Lsdk/c/a/d/b;->l:Landroid/app/PendingIntent;

    iget-object v6, p0, Lsdk/c/a/d/b;->m:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_3
    :goto_4
    return-void

    :catch_2
    move-exception v1

    iget-object v1, p0, Lsdk/c/a/d/b;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lsdk/c/a/d/b;->g:[B

    goto :goto_2

    :cond_4
    :try_start_3
    iget-object v1, p0, Lsdk/c/a/d/b;->e:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lsdk/c/a/d/b;->h:Ljava/util/ArrayList;

    iget-object v4, p0, Lsdk/c/a/d/b;->j:Ljava/util/ArrayList;

    iget-object v5, p0, Lsdk/c/a/d/b;->k:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_5
    iget v1, p0, Lsdk/c/a/d/b;->c:I

    if-lez v1, :cond_6

    iget-object v1, p0, Lsdk/c/a/d/b;->e:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lsdk/c/a/d/b;->c:I

    int-to-short v3, v3

    iget-object v4, p0, Lsdk/c/a/d/b;->g:[B

    iget-object v5, p0, Lsdk/c/a/d/b;->l:Landroid/app/PendingIntent;

    iget-object v6, p0, Lsdk/c/a/d/b;->m:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lsdk/c/a/d/b;->e:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lsdk/c/a/d/b;->f:Ljava/lang/String;

    iget-object v4, p0, Lsdk/c/a/d/b;->l:Landroid/app/PendingIntent;

    iget-object v5, p0, Lsdk/c/a/d/b;->m:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4
.end method
