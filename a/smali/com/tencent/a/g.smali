.class public final Lcom/tencent/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/a/h;

.field private b:I

.field private c:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/tencent/a/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1618

    iput v0, p0, Lcom/tencent/a/g;->b:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/a/g;->c:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    return-void
.end method

.method private a()I
    .locals 3

    :cond_0
    iget v0, p0, Lcom/tencent/a/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/a/g;->b:I

    iget v0, p0, Lcom/tencent/a/g;->b:I

    const/16 v1, 0x1a00

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1618

    iput v0, p0, Lcom/tencent/a/g;->b:I

    :cond_1
    iget-object v0, p0, Lcom/tencent/a/g;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/tencent/a/g;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/v;

    iget-object v1, p0, Lcom/tencent/a/g;->c:Landroid/util/SparseArray;

    iget v2, p0, Lcom/tencent/a/g;->b:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/tencent/a/v;->a:Lcom/tencent/tauth/b;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/tencent/a/v;->a:Lcom/tencent/tauth/b;

    invoke-interface {v1}, Lcom/tencent/tauth/b;->a()V

    :cond_2
    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/a/g;->b:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/a/g;)Lcom/tencent/a/h;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/b;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v2, "action_login"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    if-eqz v2, :cond_0

    const-string v2, "client_id"

    iget-object v3, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v3}, Lcom/tencent/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.qzone"

    const-string v5, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/a/g;->a()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_1
    if-eqz v3, :cond_8

    :goto_2
    if-eqz v2, :cond_a

    const-string v3, "key_action"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "key_params"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    const-string v3, "key_request_code"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v2, "action_login"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/tencent/a/u;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, p0, p4, v4, v5}, Lcom/tencent/a/u;-><init>(Lcom/tencent/a/g;Lcom/tencent/tauth/b;ZZ)V

    move-object p4, v2

    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/tencent/a/g;->c:Landroid/util/SparseArray;

    new-instance v4, Lcom/tencent/a/v;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/tencent/a/v;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/b;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return v0

    :cond_2
    const-string v2, "action_pay"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    if-eqz v2, :cond_0

    const-string v2, "oauth_consumer_key"

    iget-object v3, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v3}, Lcom/tencent/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v2}, Lcom/tencent/a/h;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "hopenid"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "hopenid"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    if-eqz v2, :cond_6

    const-string v2, "appid"

    iget-object v3, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v3}, Lcom/tencent/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v2}, Lcom/tencent/a/h;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "keystr"

    iget-object v3, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v3}, Lcom/tencent/a/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "keytype"

    const-string v3, "0x80"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v2}, Lcom/tencent/a/h;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "hopenid"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v2, "platform"

    const-string v3, "androidqz"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v3, v0

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_9
    :try_start_1
    const-string v2, "action_pay"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/tencent/a/u;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, p0, p4, v4, v5}, Lcom/tencent/a/u;-><init>(Lcom/tencent/a/g;Lcom/tencent/tauth/b;ZZ)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p4, v2

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_4
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/b;)I
    .locals 5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/a/g;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v2, "action_login"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "action_pay"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    if-eqz v2, :cond_2

    const-string v2, "client_id"

    iget-object v3, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v3}, Lcom/tencent/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v2, "display"

    const-string v3, "mobile"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action_login"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "action_pay"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    const-string v3, "response_type"

    const-string v4, "token"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "redirect_uri"

    const-string v4, "auth://tauth.qq.com/"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status_userip"

    invoke-static {}, Lcom/tencent/a/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status_os"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status_machine"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status_version"

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cancel_display"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "switch"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sdkv"

    const-string v4, "1.4"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sdkp"

    const-string v4, "a"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/tencent/a/n;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "action_login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/tencent/a/u;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p4, v1, v3}, Lcom/tencent/a/u;-><init>(Lcom/tencent/a/g;Lcom/tencent/tauth/b;ZZ)V

    move-object p4, v0

    :cond_5
    :goto_3
    new-instance v0, Lcom/tencent/a/i;

    invoke-direct {v0, p1, v2, p4}, Lcom/tencent/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tauth/b;)V

    invoke-virtual {v0}, Lcom/tencent/a/i;->show()V

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    if-eqz v2, :cond_2

    const-string v2, "oauth_consumer_key"

    iget-object v3, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v3}, Lcom/tencent/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v2}, Lcom/tencent/a/h;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "access_token"

    iget-object v3, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v3}, Lcom/tencent/a/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/tencent/a/g;->a:Lcom/tencent/a/h;

    invoke-virtual {v2}, Lcom/tencent/a/h;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "openid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v3, "action_story"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "sdkv"

    const-string v4, "1.4"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/a/n;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const-string v3, "action_invite"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "sdkv"

    const-string v4, "1.4"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/a/n;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_a
    const-string v0, "action_pay"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/tencent/a/u;

    invoke-direct {v0, p0, p4, v1, v1}, Lcom/tencent/a/u;-><init>(Lcom/tencent/a/g;Lcom/tencent/tauth/b;ZZ)V

    move-object p4, v0

    goto/16 :goto_3
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0x1618

    if-lt p1, v0, :cond_3

    const/16 v0, 0x1a00

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/a/g;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/v;

    iget-object v2, p0, Lcom/tencent/a/g;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/tencent/a/v;->a:Lcom/tencent/tauth/b;

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    const-string v2, "key_error_code"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "key_response"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lcom/tencent/a/v;->a:Lcom/tencent/tauth/b;

    invoke-static {v1}, Lcom/tencent/a/n;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/tauth/b;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    iget-object v0, v0, Lcom/tencent/a/v;->a:Lcom/tencent/tauth/b;

    new-instance v2, Lcom/tencent/tauth/d;

    const/4 v3, -0x4

    const-string v4, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v2, v3, v4, v1}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto :goto_0

    :cond_1
    const-string v2, "key_error_msg"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_error_detail"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/tencent/a/v;->a:Lcom/tencent/tauth/b;

    new-instance v4, Lcom/tencent/tauth/d;

    invoke-direct {v4, v1, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    iget-object v0, v0, Lcom/tencent/a/v;->a:Lcom/tencent/tauth/b;

    invoke-interface {v0}, Lcom/tencent/tauth/b;->a()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
