//
// Copyright (c) 2019-2022 yanggaofeng
//
#ifndef YangZlmConnection_H_
#define YangZlmConnection_H_

#include <yangrtc/YangRtcConnection.h>

int32_t yang_zlm_connectRtcServer(YangRtcConnection* conn);
int32_t yang_zlm_connectRtcServerUrl(YangRtcConnection* conn, const char *url);

#endif
