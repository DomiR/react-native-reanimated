//
//  IOSErrorHandler.m
//  Pods
//
//  Created by Karol Bisztyga on 3/16/20.
//

#import <Foundation/Foundation.h>
#import <React/RCTLog.h>
#include "IOSErrorHandler.h"

IOSErrorHandler::IOSErrorHandler(std::shared_ptr<Scheduler> scheduler) {
    this->scheduler = scheduler;
}

void IOSErrorHandler::raiseSpec(const char *message) {
    RCTLogError(@(message));
}

std::shared_ptr<Scheduler> IOSErrorHandler::getScheduler() {
    return this->scheduler;
}