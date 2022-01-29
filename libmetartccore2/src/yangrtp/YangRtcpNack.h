#ifndef SRC_YANGRTP_YANGRTCPNACK_H_
#define SRC_YANGRTP_YANGRTCPNACK_H_

#include <stdint.h>
#include <yangrtp/YangRtcpCommon.h>
#include <yangrtp/YangRtp.h>
   typedef struct YangPidBlp {
        uint16_t pid;
        uint16_t blp;
        bool in_use;
    }YangPidBlp;

#ifdef __cplusplus
extern "C"{
#endif
void yang_init_rtcpNack(YangRtcpCommon* comm,uint32_t pssrc);
void yang_destroy_rtcpNack(YangRtcpCommon* comm);
void yang_rtcpNack_addSn(YangRtcpNack* nack,uint16_t sn);

int32_t yang_decode_rtcpNack(YangRtcpCommon* comm,YangBuffer *buffer);
int32_t yang_encode_rtcpNack(YangRtcpCommon* comm,YangBuffer *buffer);
uint64_t yang_rtcpNack_nb_bytes();

#ifdef __cplusplus
}
#endif
#endif /* SRC_YANGRTP_YANGRTCPNACK_H_ */